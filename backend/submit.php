<?php

// Start session
session_start();

// Get data
$winner = $_POST['winner'];
$pokemon_1 = $_SESSION['pokemon_1'];
$pokemon_2 = $_SESSION['pokemon_2'];

if (
    !isset($_POST['form_id']) || !isset($_POST['winner']) ||     // Check if all data is set
    $_POST['form_id'] !== $_SESSION['form_id'] ||                // Check if form id is valid
    $winner != $pokemon_1['id'] && $winner != $pokemon_2['id']   // Check if winner is valid
) {
    // Destroy session
    session_destroy();

    // Redirect to index
    header('Location: ../index.php?error=invalid_data');
    exit();
}

// Get winner and loser
$winner = $winner === $pokemon_1['id'] ? $pokemon_1 : $pokemon_2;
$loser = $winner === $pokemon_1 ? $pokemon_2 : $pokemon_1;

// Connect to database
include_once('conn.php');

// Update winner
$query = "UPDATE pokemon
          SET voted_for = voted_for + 1, total_votes = total_votes + 1 WHERE id = :id";
$stmt = $conn->prepare($query);
$stmt->execute(['id' => $winner['id']]);

// Update loser
$query = "UPDATE pokemon
          SET voted_against = voted_against + 1, total_votes = total_votes + 1 WHERE id = :id";
$stmt = $conn->prepare($query);
$stmt->execute(['id' => $loser['id']]);

// Destroy session
session_destroy();

// Redirect to index
header('Location: ../index.php');

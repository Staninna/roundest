<?php

// Start session
session_start();

// Get data
$choice = $_POST['choice'];
$pokemon_1 = $_SESSION['pokemon_1'];
$pokemon_2 = $_SESSION['pokemon_2'];

if (
    !isset($_POST['form_id']) || !isset($_POST['choice']) ||   // Check if all data is set
    $_POST['form_id'] !== $_SESSION['form_id'] ||              // Check if form id is valid
    $choice != $pokemon_1['id'] && $choice != $pokemon_2['id'] // Check if winner is valid
) {
    // Destroy session
    session_destroy();

    // Redirect to index
    header('Location: ../index.php?error=invalid_data');
    exit();
}

// Get winner and loser
$winner = $choice == $pokemon_1['id'] ? $pokemon_1 : $pokemon_2;
$loser = $choice  == $pokemon_1['id'] ? $pokemon_2 : $pokemon_1;

// Connect to database
include_once('conn.php');

// Get winner and loser elo ratings
$query = "SELECT elo_rating
          FROM pokemon
          WHERE id = :id";
$stmt = $conn->prepare($query);
$stmt->execute(['id' => $winner['id']]);
$winner_elo = $stmt->fetch(PDO::FETCH_ASSOC)['elo_rating'];
$stmt->execute(['id' => $loser['id']]);
$loser_elo = $stmt->fetch(PDO::FETCH_ASSOC)['elo_rating'];

// Calculate new elo ratings
include_once('config.php');

$expected_win_probability_winner = 1 / (1 + pow($power, ($loser_elo  - $winner_elo) / $devider));
$expected_win_probability_loser  = 1 / (1 + pow($power, ($winner_elo -  $loser_elo) / $devider));

$winner_elo_new = $winner_elo + $multiplier * ($score_win  - $expected_win_probability_winner);
$loser_elo_new =  $loser_elo  + $multiplier * ($score_lose - $expected_win_probability_loser);

// Update database
$query = "UPDATE pokemon
          SET elo_rating = :elo_rating
          WHERE id = :id";
$stmt = $conn->prepare($query);
$stmt->execute(['elo_rating' => $winner_elo_new, 'id' => $winner['id']]);
$stmt->execute(['elo_rating' => $loser_elo_new, 'id' => $loser['id']]);

// Destroy session
session_destroy();

// Redirect to index
header('Location: ../index.php');

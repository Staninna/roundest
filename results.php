<?php

// Connect to database
require_once('backend/conn.php');

// Get all pokemon
$query = "SELECT *, (voted_for * 100 / (voted_for + voted_against)) AS positive_votes_percentage FROM pokemon ORDER BY positive_votes_percentage DESC, (voted_for + voted_against) DESC";
$stmt = $conn->prepare($query);
$stmt->execute();
$pokemons = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo '<table>';
echo '<tr>';
echo '<th>Sprite</th>';
echo '<th>Pokemon</th>';
echo '<th>Positive votes</th>';
echo '<th>Negative votes</th>';
echo '<th>Positive votes percentage</th>';
echo '</tr>';
foreach ($pokemons as $pokemon) {
    echo '<tr>';
    echo '<td><img src="img/mon/' . $pokemon['id'] . '.png" alt="' . $pokemon['name'] . '" class="pokemon-sprite" /></td>';
    echo '<td>' . $pokemon['name'] . '</td>';
    echo '<td>' . $pokemon['voted_for'] . '</td>';
    echo '<td>' . $pokemon['voted_against'] . '</td>';
    echo '<td>' . $pokemon['positive_votes_percentage'] . '</td>';
    echo '</tr>';
}
echo '</table>';

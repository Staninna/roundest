<?php

// Connect to database
require_once('backend/conn.php');

// Get all pokemon
$query = "SELECT name, voted_for, voted_against,
          (voted_for * 100 / (voted_for + voted_against)) AS positive_votes_percentage
          FROM pokemon
          ORDER BY positive_votes_percentage DESC, (voted_for + voted_against) DESC";
$stmt = $conn->prepare($query);
$stmt->execute();
$pokemons = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php require_once('backend/head.php'); ?>
    <title>Results</title>
</head>

<body>
    <h1>Results</h1>


    <table>
        <tr>
            <th>Sprite</th>
            <th>Pokemon</th>
            <th>Positive votes</th>
            <th>Negative votes</th>
            <th>Positive votes percentage</th>
        </tr>
        <?php foreach ($pokemons as $pokemon) { ?>
            <tr>
                <td><img src="img/mon/<?php echo $pokemon['id']; ?>.png" alt="<?php echo $pokemon['name']; ?>" class="pokemon-sprite" /></td>
                <td><?php echo $pokemon['name']; ?></td>
                <td><?php echo $pokemon['voted_for']; ?></td>
                <td><?php echo $pokemon['voted_against']; ?></td>
                <td><?php echo $pokemon['positive_votes_percentage']; ?></td>
            </tr>
        <?php } ?>
    </table>
</body>

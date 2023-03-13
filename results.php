<?php

// Connect to database
require_once('backend/conn.php');

// Get all pokemon
$query = "SELECT id, name, elo_rating
          FROM pokemon
          ORDER BY elo_rating DESC, total_votes DESC";
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
            <th>Elo Rating</th>
        </tr>
        <?php foreach ($pokemons as $pokemon) { ?>
            <tr>
                <td><img src="img/mon/<?php echo $pokemon['id']; ?>.png" alt="<?php echo $pokemon['name']; ?>" class="pokemon-sprite" /></td>
                <td><?php echo $pokemon['name']; ?></td>
                <td><?php echo $pokemon['elo_rating']; ?></td>
            </tr>
        <?php } ?>
    </table>
</body>

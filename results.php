<?php

// Connect to database
require_once('backend/conn.php');

// Get all pokemon
$query = "SELECT id, name, elo_rating, total_votes
          FROM pokemon
          ORDER BY elo_rating DESC";
$stmt = $conn->prepare($query);
$stmt->execute();
$pokemons = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>

<?php require_once('backend/head.php'); ?>

<body>
    <h1>Results</h1>


    <table>
        <tr>
            <th>Id</th>
            <th>Sprite</th>
            <th>Pokemon</th>
            <th>Elo Rating</th>
            <th>Total Votes</th>
        </tr>
        <?php foreach ($pokemons as $pokemon) { ?>
            <tr>
                <td><?php echo $pokemon['id']; ?></td>
                <td><img src="img/mon/<?php echo $pokemon['id']; ?>.png" alt="<?php echo $pokemon['name']; ?>" class="pokemon-sprite" /></td>
                <td><?php echo $pokemon['name']; ?></td>
                <td><?php echo $pokemon['elo_rating']; ?></td>
                <td><?php echo $pokemon['total_votes']; ?></td>
            </tr>
        <?php } ?>
    </table>
</body>

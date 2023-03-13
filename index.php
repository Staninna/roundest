<?php

require_once 'backend/conn.php';

// Start the session
session_start();

// Get two random pokemon
$query = "SELECT id, name
          FROM (
              SELECT id, name
              FROM pokemon
              ORDER BY total_votes ASC
              LIMIT 40
          ) AS least_20
          ORDER BY RAND()
          LIMIT 2;";
$stmt = $conn->prepare($query);
$stmt->execute();
$pokemons = $stmt->fetchAll();
$pokemon_1 = $pokemons[0];
$pokemon_2 = $pokemons[1];

// Generate a form id
$ip = (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) ? $_SERVER['HTTP_X_FORWARDED_FOR'] : $_SERVER['REMOTE_ADDR'];
$date = date('YmdHis');
$rand_int = rand(0, 1000000);
$form_id = hash('sha256', $ip . $date . $rand_int . "@Staninna");

// Set session variables
$_SESSION['form_id'] = $form_id;
$_SESSION['pokemon_1'] = $pokemon_1;
$_SESSION['pokemon_2'] = $pokemon_2;

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php require_once('backend/head.php'); ?>
    <title>Roundest Pokemon</title>
</head>

<body>
    <form action="backend/submit.php" method="post">
        <input type="hidden" name="form_id" value="<?php echo $form_id; ?>">
        <div class="form-pokemons">
            <label class="form-pokemon">
                <img src="img/mon/<?= $pokemon_1['id'] ?>.png" alt="<?= $pokemon_1['name'] ?>" class="pokemon-sprite" />
                <div class="form-input">
                    <input type="radio" name="winner" value="<?php echo $pokemon_1['id']; ?>" required>
                    <?php echo $pokemon_1['name']; ?>
                </div>
            </label>
            <label class="form-pokemon">
                <img src="img/mon/<?= $pokemon_2['id'] ?>.png" alt="<?= $pokemon_2['name'] ?>" class="pokemon-sprite" />
                <div class="form-input">
                    <input type="radio" name="winner" value="<?php echo $pokemon_2['id']; ?>" required>
                    <?php echo $pokemon_2['name']; ?>
                </div>
            </label>
        </div>
        <input type="submit" value="Submit">
    </form>
</body>

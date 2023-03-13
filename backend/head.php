<?php require_once 'config.php'; ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Roundest Pokemon</title>

    <!-- reCAPTCHA v3 -->
    <script src="https://www.google.com/recaptcha/api.js"></script>
    <script>
        // Submit form when reCAPTCHA is completed
        function onSubmit(token) {
            document.getElementById("<?= $captcha_form_id; ?>").submit();
        }
    </script>
</head>

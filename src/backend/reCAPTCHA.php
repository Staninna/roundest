<?php

include_once 'config.php';

// Get the reCAPTCHA response token from the form submission data
$recaptcha_response = $_POST['g-recaptcha-response'];

// Send a POST request to the reCAPTCHA API server to verify the token
$recaptcha_url = 'https://www.google.com/recaptcha/api/siteverify';
$recaptcha_response_data = array(
    'secret' => $recaptcha_secret,
    'response' => $recaptcha_response,
    'remoteip' => $_SERVER['REMOTE_ADDR']
);

$recaptcha_options = array(
    'http' => array(
        'method' => 'POST',
        'content' => http_build_query($recaptcha_response_data),
        'header' => 'Content-Type: application/x-www-form-urlencoded'
    )
);

$recaptcha_context = stream_context_create($recaptcha_options);
$recaptcha_result = file_get_contents($recaptcha_url, false, $recaptcha_context);
$recaptcha_response_obj = json_decode($recaptcha_result);

// Check if the reCAPTCHA verification succeeded
$recaptcha_succes = $recaptcha_response_obj->success ?? false;

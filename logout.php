<?php

session_start();
$_SESSION = [];
session_destroy();

//Redirection vers la page d'accueil
header('Location: home.php');
exit();
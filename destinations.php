<?php


session_start();
include 'connection.php';
$query = $db->prepare('SELECT ID, title, description, picture FROM destination ');
$query->execute(); // Exécution de la requête

$destinations = $query->fetchAll(); // Récupère tous les résultats dans un tableau


$template = 'destinations';
include "layout.phtml";
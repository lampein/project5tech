<?php

include 'connection.php';
session_start();


$query = $db->prepare('SELECT category.ID, category.title, destination.picture as picture 
						FROM category 
						INNER JOIN destination ON category.ID = destination.category
						GROUP BY category');
$query->execute();

$categories = $query -> fetchAll(); 

$query = $db->prepare('SELECT ID, title, description, picture, slider FROM destination ');
$query->execute(); 

$destinations = $query->fetchAll();

$template = 'home';
include 'layout.phtml'; 

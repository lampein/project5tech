<?php

session_start();
include 'connection.php';

$query = $db->prepare('SELECT * FROM destination  WHERE ID = ? ');
$query->execute([
	$_GET['id']
]);

$destination = $query->fetch();

$query = $db->prepare('SELECT category.ID AS categID, destination.ID, destination.title AS title, description, picture FROM category INNER JOIN destination ON category.ID = destination.category WHERE category.ID = ?  ');
$query->execute([
	$_GET['id']
]); 

$destinations = $query->fetchAll(); 

$template = 'category';
include "layout.phtml";




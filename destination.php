<?php

session_start();
include "connection.php";

$query = $db->prepare('SELECT * FROM destination WHERE ID = ?');
$query->execute([
	$_GET['id']
]);

$destination = $query->fetch();
/*var_dump($destination);
exit();*/

$query = $db->prepare('SELECT conditions.ID, destinationID, content, destination.ID, price, period, include, notInclude FROM conditions INNER JOIN destination ON conditions.destinationID = destination.ID WHERE conditions.ID = ?');
$query->execute([
	$_GET['id']
]);

$conditions = $query->fetch();

// si l'utilisateur n'est pas connecté, il ne peut pas voir les détails de la participation

if(! isset($_SESSION['user'])){
	header('Location:userconnect.php');
	exit();
}

$template = 'destination';
include "layout.phtml";


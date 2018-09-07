<?php
include 'connection.php';
session_start();

if (isset($_POST["order"]))
    {
        $order = json_decode($_POST["order"], true);

        foreach ($order as $destination){

            $destinationID = $destination['ID'];
            $nbPersons = $destination['nbPersons'];
            $userID = $_SESSION['user']['id'];

            $query = $db -> prepare('INSERT INTO orders(userID, destinationID, creationDate, nbPersons) VALUES(?, ?, NOW(), ?)');
            $query -> execute([
                $userID,
                $destinationID,
                $nbPersons
        ]);

        }
    }




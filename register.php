<?php

if(isset($_POST["send"]) AND !empty($_POST["send"])) //je controle lorsque j'appuie sur le bouton envoyer
{
   	if(!empty($_POST['email'])) //je controle si le champ n'est pas vide
   	{    
   		include 'connection.php';
        $query = $db->prepare('SELECT * FROM user WHERE email = ?');

        $query->execute([$_POST['email']]);
        $email = $query ->rowCount();

	        if($email == 1)
	        {
	            $message = "Adresse e-mail déjà utilisée!";

	        }   else   {
	        	
		  		$firstName=htmlspecialchars($_POST['ftName']);
				$lastName=htmlspecialchars($_POST['ltName']);
				$password = password_hash($_POST['password'], PASSWORD_BCRYPT); 
				$address= htmlspecialchars($_POST['address']);
				$email=htmlspecialchars($_POST['email']);
				$birthday= htmlspecialchars($_POST['birthday']);
				$city=htmlspecialchars($_POST['city']);
				$postalCode= htmlspecialchars($_POST['postalCode']);
				$country=htmlspecialchars($_POST['country']);
				$phoneNumber=htmlspecialchars($_POST['phoneNumber']);

		        include 'connection.php';

				$query = $db -> prepare('INSERT INTO user(firstName, lastName, password, email, address, birthday, city, postalCode, country, phoneNumber) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)');
				$query -> execute([
					$firstName, $lastName, $password, $email, $address, $birthday, $city, $postalCode, $country, $phoneNumber
				]);

		        if($query)
		        {
					$message = "Félicitations ! Votre nouveau compte a été créé avec succès !";
				} else {
					$message = "Impossible d'insérer vos informations de données!!";
				}
						
		            header('Location:userconnect.php');
					exit();
       		}
   	}

} 

$template = 'register';
include 'layout.phtml';
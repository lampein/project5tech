<?php 

session_start();
if(isset($_POST["enter"])){

	// le cas ou l'utilisateur indroduit son email et son mot de passe

	if(!empty($_POST['email']) && !empty($_POST['password'])) 
	{
		
		$email = $_POST['email'];
		$password = $_POST['password'];

		// la requête pour vérifier si l'utilisateur est déjà inscrit dans la base de données (d'après son e-mail) 

		include ("connection.php");
		$query = $db -> prepare('SELECT * FROM user WHERE email = ? ');

		$query->execute([
		    $_POST['email']	    
		]);

		// retourne le nombre de lignes affectées par le dernier appel à la fonction => le nombre d'utilisateurs avec le même e-mail

		$user = $query ->fetch();  
		
		if ($user) {

		    if(password_verify($password, $user['password'])) {
		        $_SESSION['user'] = [
		            'email' => $user['email'],
		            'id' => $user['ID'],
		            'firstName' => $user['firstName']
		        ];
		    }
		    	$message = "Vous êtes connecté!";
		        header ('Location:home.php');

    
		} else {
			$message = "Invalide e-mail ou mot de passe !";
		}

	} else {
		$message = "Champ obligatoire à saisir.";
	}
}

$template = 'userconnect';
include 'layout.phtml';

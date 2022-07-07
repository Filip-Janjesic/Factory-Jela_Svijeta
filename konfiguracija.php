<?php

session_start();

$allowed_lang = array('en','hr');

if (isset($_GET['lang']) === true && in_array($_GET['lang'],$allowed_lang) === true) {
	$_SESSION['lang'] = $_GET['lang'];

}else{
    $_SESSION['lang'] = 'en';
}

include 'lang/' . $_SESSION['lang'] . '.php';

$putanja = "/Jela_svijeta/";
$naslov = "Jela svijeta";

if($_SERVER["HTTP_HOST"]==="jela-svijeta.epizy.com"){
	$host="	sql212.epizy.com";
	$dbname="epiz_32116458_Jela_svijeta";
	$dbuser="epiz_32116458";
	$dbpass="zGMPsVbhvDc2i";
}else{
	$host="localhost";
	$dbname="Jela_svijeta";
	$dbuser="root";
	$dbpass="";
	}

try{
	$veza = new PDO("mysql:host=" . $host . ";dbname=" . $dbname,$dbuser,$dbpass);
	$veza->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
	$veza->setAttribute(PDO::MYSQL_ATTR_INIT_COMMAND,"SET NAMES 'utf8';");
	$veza->exec("SET NAMES 'utf8';");
}catch(PDOException $e){
	switch ($e->getCode()) {
		case 1049:
			header("location: " . $putanja . "greske/kriviNazivBaze.html");
			exit;
			break;
		
		default:
			header("location: " . $putanja . "greske/greska.php?code=" . $e->getCode());;
			exit;
			break;
	}
}


<?php

session_start();

$allowed_lang = array('en','hr');

if (isset($_GET['lang']) === true && in_array($_GET['lang'],$allowed_lang) === true) {
	$_SESSION['lang'] = $_GET['lang'];

}else{
    $_SESSION['lang'] = 'en';
}

include 'lang/' . $_SESSION['lang'] . '.php';

$con=mysql_connect('sql212.epizy.com','epiz_32116458','zGMPsVbhvDc2i','epiz_32116458_Jela_svijeta');
if($con==false){
	echo"No conection";
}
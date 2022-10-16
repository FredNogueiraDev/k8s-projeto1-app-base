<?php
$servername = "";
$username = "root";
$password = "adm123";
$database = "bd-dio";

// Conectar


$link = new mysqli($servername, $username, $password, $database);

/* Checar conexão */

if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

?>

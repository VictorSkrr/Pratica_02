<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "pratica_02";

// Criar a conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar a conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}
?>
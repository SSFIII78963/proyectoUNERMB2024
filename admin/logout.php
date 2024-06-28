<?php
include 'conexiondb.php';
$conn=conexion();
session_start();

    $salida= $conn->query("INSERT INTO registro (usuario_id, entrada) VALUES ('$_SESSION[usuario]','0')");
    header ("location: index.php");


if(isset($_GET['out'])){
    
    session_unset();
    session_destroy();
    if(headers_sent()){
    echo "<script> window.location.href='iniciosesion.php'; 
    </script>";
    exit();
    } else{
    header ("location: iniciosesion.php");
    }
}

?>
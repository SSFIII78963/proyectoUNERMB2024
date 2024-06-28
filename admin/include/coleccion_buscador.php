<?php
    include_once "conexiondb.php";
    $conn= conexion();
    $query= $conn->query("SELECT titulo_coleccion FROM colecciones");
    $resultado=$conn.$query

    
?>
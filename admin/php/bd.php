<?php

    $conexion = new mysqli("localhost", "root", "", "unermb");

    $conexion->set_charset('utf8mb4');

    if(!$conexion){
        echo $conexion->connect_errno;
    }
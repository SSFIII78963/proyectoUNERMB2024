<?php
function conexion(){
$conexion= new mysqli("localhost", "root", "", "unermb");
return $conexion;

}
?>
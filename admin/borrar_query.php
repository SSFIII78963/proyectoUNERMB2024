<?php

include_once 'conexiondb.php';

$conn = conexion();
$tabla= $_GET['buscar'];
if (isset($_GET['id'])) {
  $id = $_GET['id'];

switch ($tabla) {
  case 'libro':
         
    $result = $conn->query("DELETE FROM libro WHERE libro_id= $id");

    header("location:buscador.php?buscar=libro");
 
    break;
  case 'colecciones':
    $result = $conn->query("DELETE FROM colecciones WHERE colecciones_id= $id");

    header("location:buscador.php?buscar=colecciones");
    break;
  case 'revistas':
    $result = $conn->query("DELETE FROM revistas WHERE revistas_id= $id");

    header("location:buscador.php?buscar=revistas");
    break;

  case 'eventos_cientificos':
    $result = $conn->query("DELETE FROM eventos_cientificos WHERE eventos_cientificos_id= $id");

    header("location:buscador.php?buscar=eventos_cientificos");
    break;

  case'noticias':
    $result = $conn->query("DELETE FROM noticias WHERE noticias_id= $id");

    header("location:buscador.php?buscar=noticias");
    break;
  
  default:
    # code...
    break;
}
} else{
  //nada
  }
$conn->close();

?>
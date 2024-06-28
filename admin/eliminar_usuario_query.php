<?php

include_once 'conexiondb.php';

$conn = conexion();
if(!empty($_GET['id'])){
  $id = $_GET['id'];
  $query_dlt= "DELETE FROM registro WHERE usuario_id = $id";
  $result = $conn->query($query_dlt);
  $query_dlt2= "DELETE FROM usuarios WHERE usuario_id = $id";
  $result = $conn->query($query_dlt2);
  if($result == 1){
    echo "<div class='time'>
    <p>se a elimnado exitosamente</p>
    </div>";
    header("location: usuario_view.php");
    exit();
  }else{
    echo "se ha producido un error". $result->error;
  }
}
$conn->close();

?>
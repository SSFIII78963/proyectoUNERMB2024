<?php

include_once 'db.php';

$busqueda = $_POST['busqueda'];

$query_libro = "SELECT l.*, d.titulo_coleccion AS titulo_coleccion
from libro l 
INNER JOIN colecciones d ON l.coleccion_id = d.coleccion_id
WHERE l.titulo LIKE '%$busqueda%;";

$consulta_array = [];
$consulta_error=['data' => false];

$conn = conexion();
$result = $conn->query($query_libro);


if($result->num_rows > 0){
    while($data = $result->fetch_assoc()){
        $consulta_array[] = $data;
    }
    echo json_encode($consulta_array);
}else{
    echo json_encode($consulta_error);
}
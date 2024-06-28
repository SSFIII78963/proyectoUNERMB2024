<?php
include 'conexiondb.php';

$busqueda = $_POST['busqueda'];
$input_get = $_POST['input_get'];


switch($input_get){
    case "libro":
    $query = "SELECT l.*, c.titulo_coleccion AS titulo_coleccion
    FROM libro l 
    INNER JOIN colecciones c ON l.coleccion_id = c.colecciones_id
    WHERE l.titulo LIKE '%$busqueda%'";
    break;
    case "colecciones":
    $query = "SELECT * FROM colecciones WHERE titulo_coleccion LIKE '%$busqueda%'";
    break;
    case "eventos_cientificos":
    $query = "SELECT * FROM eventos_cientificos WHERE titulo_evento LIKE '%$busqueda%'";
    break;
    case "noticias":
    $query = "SELECT * FROM noticias WHERE titulo_noticia LIKE '%$busqueda%'";
    break;
    case "revistas":
    $query = "SELECT * FROM revistas WHERE titulo LIKE '%$busqueda%'";
    break;
}

$consulta_array = [];
$consulta_error=['data' => false];

$conn = conexion();
$result = $conn->query($query);


if($result->num_rows > 0){
    while($data = $result->fetch_assoc()){
        $consulta_array[] = $data;
    }
    echo json_encode($consulta_array);
}else{
    echo json_encode($consulta_error);
}
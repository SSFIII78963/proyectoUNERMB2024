<?php

include_once 'conexiondb.php';

//query insert
$conn=conexion();
if(!empty($_POST['agregar_coleccion'])){
if(!empty($_POST['titulo_coleccion'])  && !empty($_POST['sinopsis_coleccion'])  && !empty($_POST['link_imagen'])){
    $titulo_coleccion=$_POST['titulo_coleccion'];
    $sinopsis_coleccion=$_POST['sinopsis_coleccion'];
    $link_imagen=$_POST['link_imagen'];

    $result=$conn->query("INSERT INTO colecciones (titulo_coleccion, sinopsis_coleccion, link_imagen) 
    VALUES('$titulo_coleccion','$sinopsis_coleccion','$link_imagen')");
    
    if($result==1){
     echo "<div class='time'>
     <p>el insert fue un exito </p>
     </div>";
    }
   
}else {
    echo "Error al ejecutar la consulta: " . $conn->error;
}

}
$conn->close();
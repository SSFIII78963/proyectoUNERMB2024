<?php

include_once 'conexiondb.php';

//query insert
$conn=conexion();
if(!empty($_POST['agregar_libro'])){
if(!empty($_POST['titulo'])  && !empty($_POST['sinopsis'])  && !empty($_POST['link_imagen'])  
&& !empty($_POST['link_libro']) && !empty($_POST['colecciones'])){
    $titulo=$_POST['titulo'];
    $sinopsis=$_POST['sinopsis'];
    $link_imagen=$_POST['link_imagen'];
    $link_libro=$_POST['link_libro'];
    $coleccion=$_POST['colecciones'];

    $result=$conn->query("INSERT INTO libro (titulo, sinopsis, link_imagen, link_libro, coleccion_id) 
    VALUES('$titulo','$sinopsis','$link_imagen','$link_libro','$coleccion')");
    
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
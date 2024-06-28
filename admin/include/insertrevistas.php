<?php

include_once 'conexiondb.php';

//query insert
$conn=conexion();
if(!empty($_POST['agregar_revista'])){
if(!empty($_POST['titulo'])  && !empty($_POST['sinopsis'])  && !empty($_POST['link_imagen'])  
&& !empty($_POST['link_revista'])){
    $titulo=$_POST['titulo'];
    $sinopsis=$_POST['sinopsis'];
    $link_imagen=$_POST['link_imagen'];
    $link_revista=$_POST['link_revista'];

    $result=$conn->query("INSERT INTO revistas (titulo, sinopsis, link_imagen, link_revista) 
    VALUES('$titulo','$sinopsis','$link_imagen','$link_revista')");
    
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
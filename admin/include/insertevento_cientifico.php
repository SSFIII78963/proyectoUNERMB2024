<?php

include_once 'conexiondb.php';

//query insert
$conn=conexion();
if(!empty($_POST['agregar_evento'])){
if(!empty($_POST['titulo_evento'])  && !empty($_POST['sinopsis_evento'])  && !empty($_POST['link_imagen'])  
&& !empty($_POST['link_evento'])){
    $titulo_evento=$_POST['titulo_evento'];
    $sinopsis_evento=$_POST['sinopsis_evento'];
    $link_imagen=$_POST['link_imagen'];
    $link_evento=$_POST['link_evento'];

    $result=$conn->query("INSERT INTO eventos_cientificos (titulo_evento, sinopsis_evento, link_imagen, link_evento) 
    VALUES('$titulo_evento','$sinopsis_evento','$link_imagen','$link_evento')");
    
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
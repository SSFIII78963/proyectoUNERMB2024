<?php

include_once 'conexiondb.php';

//query insert
$conn=conexion();
if(!empty($_POST['agregar_noticia'])){
if(!empty($_POST['titulo_noticia'])  && !empty($_POST['sinopsis'])  && !empty($_POST['link_imagen'])  
&& !empty($_POST['link_noticia'])){
    $titulo_noticia=$_POST['titulo_noticia'];
    $sinopsis=$_POST['sinopsis'];
    $link_imagen=$_POST['link_imagen'];
    $link_noticia=$_POST['link_noticia'];

    $result=$conn->query("INSERT INTO noticias (titulo_noticia, sinopsis, link_imagen, link_noticia) 
    VALUES('$titulo_noticia','$sinopsis','$link_imagen','$link_noticia')");
    
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
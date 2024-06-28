<?php
include_once 'conexiondb.php';
$conn = conexion();

$tabla = $_POST['tabla'];
$id = $_POST['id'];

switch ($tabla) {
    case 'libro':
        if(!empty($_POST['titulo']) && !empty($_POST['sinopsis'])
            && !empty($_POST['link_imagen']) && !empty($_POST['link_libro'])
            && !empty($_POST['colecciones'])    
             ){
                $id=$_POST['id'];//la variable get ya esta en la url
                $titulo = $_POST['titulo'];
                $sinopsis = $_POST['sinopsis'];
                $link_imagen = $_POST['link_imagen'];
                $link_libro = $_POST['link_libro'];
                $colecciones = $_POST['colecciones'];
                $result = $conn->query("UPDATE $tabla SET titulo='$titulo',
                sinopsis='$sinopsis', link_imagen='$link_imagen', link_libro='$link_libro',
                coleccion_id='$colecciones'WHERE libro_id=$id");
                if($result==1){
                    header("location:buscador.php?buscar=libro");
                }else{
                    echo  "ha ocurrido un error";
                }
            }
        break;
    case 'colecciones':
        if(!empty($_POST['titulo_coleccion']) && !empty($_POST['sinopsis_coleccion'])
            && !empty($_POST['link_imagen'])    
             ){
                $id=$_POST['id'];//la variable get ya esta en la url
                $titulo = $_POST['titulo_coleccion'];
                $sinopsis = $_POST['sinopsis_coleccion'];
                $link_imagen = $_POST['link_imagen'];
              
                $result = $conn->query("UPDATE $tabla SET titulo_coleccion='$titulo',
                sinopsis_coleccion='$sinopsis', link_imagen='$link_imagen'
                WHERE colecciones_id=$id");
                if($result==1){
                    header("location:buscador.php?buscar=colecciones");
                }else{
                    echo  "ha ocurrido un error";
                }
            }
        break;
    case 'revistas':
        if(!empty($_POST['titulo']) && !empty($_POST['sinopsis'])
        && !empty($_POST['link_imagen'])  && !empty($_POST['link_revista']) 
         ){
            $id=$_POST['id'];//la variable get ya esta en la url
            $titulo = $_POST['titulo'];
            $sinopsis = $_POST['sinopsis'];
            $link_imagen = $_POST['link_imagen']; 
             $link_revista = $_POST['link_revista'];
          
            $result = $conn->query("UPDATE $tabla SET titulo='$titulo',
            sinopsis='$sinopsis', link_imagen='$link_imagen', link_revista='$link_revista'
            WHERE revistas_id=$id");
            if($result==1){
                header("location:buscador.php?buscar=revistas");
            }else{
                echo  "ha ocurrido un error";
            }
        }
        break;
    case 'noticias':
        if(!empty($_POST['titulo']) && !empty($_POST['sinopsis'])
        && !empty($_POST['link_imagen'])  && !empty($_POST['link_noticia']) 
         ){
            $id=$_POST['id'];//la variable get ya esta en la url
            $titulo = $_POST['titulo_noticia'];
            $sinopsis = $_POST['sinopsis'];
            $link_imagen = $_POST['link_imagen']; 
             $link_noticia = $_POST['link_noticia'];
          
            $result = $conn->query("UPDATE $tabla SET titulo_noticia='$titulo',
            sinopsis='$sinopsis', link_imagen='$link_imagen', link_noticia='$link_noticia'
            WHERE noticias_id=$id");
            if($result==1){
                header("location:buscador.php?buscar=noticias");
            }else{
                echo  "ha ocurrido un error";
            }
        }
    break;
    case 'eventos_cientificos':
        if(!empty($_POST['titulo_evento']) && !empty($_POST['sinopsis'])
        && !empty($_POST['link_imagen'])  && !empty($_POST['link_evento']) 
         ){
            $id=$_POST['id'];//la variable get ya esta en la url
            $titulo = $_POST['titulo_evento'];
            $sinopsis = $_POST['sinopsis_evento'];
            $link_imagen = $_POST['link_imagen']; 
             $link_noticia = $_POST['link_evento'];
          
            $result = $conn->query("UPDATE $tabla SET titulo_evento='$titulo',
            sinopsis_evento='$sinopsis', link_imagen='$link_imagen', link_evento='$link_evento'
            WHERE eventos_cientificos_id=$id");
            if($result==1){
                header("location:buscador.php?buscar=eventos_cientificos");
            }else{
                echo  "ha ocurrido un error";
            }
        }
    break;
        default:
        break;
    }


$conn->close();
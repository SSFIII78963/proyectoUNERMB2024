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

    $conn->begin_transaction();
    try{
    $result=$conn->query("INSERT INTO libro (titulo, sinopsis, link_imagen, link_libro, coleccion_id) 
    VALUES('$titulo','$sinopsis','$link_imagen','$link_libro','$coleccion')");
    
    $update=$conn->query("UPDATE colecciones
    SET Ult_Actualizacion = CURRENT_TIMESTAMP()
    WHERE colecciones_id = (SELECT $coleccion FROM libro 
    WHERE titulo = '$titulo' AND sinopsis = '$sinopsis' 
    AND link_imagen = '$link_imagen' AND link_libro = '$link_libro')");
    $conn->commit();
    if($result==1 && $update==1){
     echo "<div class='time'>
     <p>el insert fue un exito </p>
     </div>";
    }
} catch(mysqli_sql_exception $e){
    $conn->rollback();
    echo"no se pudo realizar la actualizacion".$e->getMessage();
}
   
}else {
    echo "Error al ejecutar la consulta: " . $conn->error;
}

}
$conn->close();
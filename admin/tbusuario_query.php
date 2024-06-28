<?php

include_once 'conexiondb.php';
$conn= conexion();

if(!empty($_POST['insertar_usuario'])){
if(!empty($_POST['nombre_usuario'])  && !empty($_POST['nombre']) && !empty($_POST['apellido'])  
&& !empty($_POST['contraseña'])){
    $nombre_usuario=$_POST['nombre_usuario'];
    $nombre=$_POST['nombre'];
    $apellido=$_POST['apellido'];
    $contraseña=$_POST['contraseña'];


    $result=$conn->query("INSERT INTO usuarios(nombre_usuario, nombre, apellido, usuario_password) 
    VALUES('$nombre_usuario','$nombre','$apellido','$contraseña')");
    
    if($result==1){
     echo "<div class='time'>
     <p> el insert fue un exito </p>
     </div>";
    }
   
}else {
    echo "Error al ejecutar la consulta: " . $conn->error;
}

}
$conn->close();

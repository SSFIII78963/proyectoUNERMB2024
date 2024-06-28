<?php
/*conexion*/
include_once("conexiondb.php");
$conn= conexion();
if(!empty($_POST['loginbutton'])){
    if(!empty ($_POST ['User']) && !empty($_POST ['pswd'])){
        $usu= $_POST ['User'];
        $con= $_POST ['pswd'];
        $consulta= $conn->query("SELECT * FROM usuarios WHERE nombre_usuario='$usu' and usuario_password='$con'");

        if($consulta->num_rows>0){
            $row= $consulta->fetch_assoc();
            session_start();
            $_SESSION["login"] = "iniciado";
            $_SESSION["usuario"] = "$row[usuario_id]";
            $_SESSION["name"] = "$row[nombre]";
            $entrada= $conn->query("INSERT INTO registro (usuario_id, entrada) VALUES ('$row[usuario_id]','1')");
            header ("location: index.php");
            //session_name("Login");


            
        
        } else{
             header("location: iniciosesion.php");
        }

        }
    }

/*$Dato=mysqli_num_rows($conn);
$nombre=("SELECT nombre FROM usuarios WHERE usuario='$usu'");

Validacion de la Sesion 
if($Dato>0){
    session_name("Login");
    session_start();
    header ("location: index.php");
  

} else{
     echo "Datos Incorrectos, Intente nuevamente.";
}
mysqli_free_result($resultado);
mysqli_close($connection);*/
$conn->close();
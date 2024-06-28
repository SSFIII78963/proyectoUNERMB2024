<?php
$tabla = $_GET['buscar'];
$id = $_GET['id'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styletb.css">
    <title>Document</title>
</head>
<body>

 <form action="modificar_query.php" method="POST">
 <input type="hidden" id="input" name="id" value="<?php echo $id?>">
 <input type="hidden" id="input" name="tabla" value="<?php echo $tabla?>">
 
    <?php    
   switch($tabla){
    case"eventos_cientificos": 
     include("tb_agregar/tbeventos_cientificos.php");
     exit();
    break;
    case"noticias": 
     include("tb_agregar/tbnoticias.php");
     exit();
    break;
    case"revistas": 
      include("tb_agregar/tbrevista.php");
      exit();
    break;
    case"colecciones": 
        include("tb_agregar/tbcoleccion.php");
        exit();
      break;
      case"libro": 
        include("tb_agregar/tb_libro.php");
        exit();
      break;
  default:
    echo"Tabla no encontrada.";
 }
   
 ?>
 
</form>
</body>
</html>
<?php
    $nombrecampo= $_GET["agregar"];

    include ("header.php");

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/styletb.css">
</head>

<body>
  <form action="" method= "POST">
            
        <?php
        if($nombrecampo=="libro"){
        include("include/tblibro.php");
            exit();
        } else if($nombrecampo=="colecciones"){
            include("include/tbcoleccion.php");
            exit();
            }

            switch($nombrecampo){
                case"eventos_cientificos": 
                 include("include/tbeventos_cientificos.php");
                 exit();
                break;
                case"noticias": 
                 include("include/tbnoticias.php");
                 exit();
                break;
                case"revistas": 
                  include("include/tbrevistas.php");
                  exit();
                break;
              default:
                echo"Tabla no encontrada.";
             }
        ?>
        
  </form>
<script>
    let div_set =  document.querySelector('.time')
    div_set.style.opacity = 1;
    div_set.style.display = 'block';
    setTimeout(function (){
    div_set.style.opacity = 0;
    div_set.style.display = 'none';
    }, 3000);
 </script>

</body>
</html>
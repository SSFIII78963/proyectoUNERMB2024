<?php
$buscar = $_GET['buscar'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fondo Editorial - Admin</title>

    <link rel="shortcut icon" href="img/Logo Fondo Editorial.png" type="image/x-icon">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/styletb.css">
    
</head>
<body>
    <?php
        include ("header.php");    
        include_once("borrar_query.php");
    ?>

 <main>

     <h1>Busqueda</h1>
     <div class="input_busqueda">
         <input type="search"  id="search" placeholder="busqueda...">
         <input type="hidden"  id=input_get value="<?php echo $buscar?>">
     </div>
     <div class="errors" style="display: none;">
         <p></p>
     </div>
     <div class="table_results"  id="tableResults">
        <table id="results">
      <?php
       switch($buscar){
        case "libro":
         include "thead/thead_libro.php";
            break;
        case "eventos_cientificos":
         include "thead/thead_evento.php";
            break;
        case "noticias":
         include "thead/thead_noticia.php";
            break;
        case "colecciones":
         include "thead/thead_coleccion.php";
            break;
        case "revistas":
         include "thead/thead_revista.php";
            break;
       }
      ?> 
             <tbody>
 <!-- se cargaran dinamicamente-->
             </tbody>
             
         </table>
         <script>
  function eliminar(){
    let  respuesta = confirm("quiere eliminar este registro?");
    return respuesta
  }
</script>
         </div>
         
     </main>
     <script src="js/search.js"></script>
     
</body>
</html>
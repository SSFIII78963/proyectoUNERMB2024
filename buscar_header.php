<?php

include("php/conexiondb.php");

$conexion = conexion();

// Obtén el índice de la página actual (por ejemplo, desde una variable GET o POST)
$pagina_actual = isset($_GET['pagina']) ? intval($_GET['pagina']) : 0;

// Escapa el valor de $_GET['titulo'] para evitar inyección de SQL
$titulo = $conexion->real_escape_string($_GET['titulo']);

// Calcula el offset para la consulta
$offset = $pagina_actual * 20;

$query = "SELECT COUNT(*) AS total_registros
    FROM (
        SELECT libro_id as id, titulo, link_imagen, sinopsis, 'libro' as fuente FROM libro WHERE titulo LIKE '%$titulo%'
        UNION ALL
        SELECT revistas_id as id, titulo, link_imagen, sinopsis, 'revista' as fuente FROM revistas WHERE titulo LIKE '%$titulo%'
        UNION ALL
        SELECT eventos_cientificos_id as id, titulo_evento as titulo, link_imagen, sinopsis_evento as sinopsis, 'evento_cientifico' as fuente FROM eventos_cientificos WHERE titulo_evento LIKE '%$titulo%'
        UNION ALL
        SELECT colecciones_id as id, titulo_coleccion as titulo, link_imagen, sinopsis_coleccion as sinopsis, 'revista' as fuente FROM colecciones WHERE titulo_coleccion LIKE '%$titulo%'
        UNION ALL
        SELECT noticias_id as id, titulo_noticia as titulo, link_imagen, sinopsis, 'noticia' as fuente FROM noticias WHERE titulo_noticia LIKE '%$titulo%'
    ) AS subconsulta
";

$total_colecciones = $conexion->query($query)->fetch_assoc();

$query = "SELECT *
    FROM (
        SELECT libro_id as id, titulo, link_imagen, sinopsis, 'libro' as fuente FROM libro WHERE titulo LIKE '%$_GET[titulo]%'
        UNION ALL
        SELECT revistas_id as id, titulo, link_imagen, sinopsis, 'revista' as fuente FROM revistas WHERE titulo LIKE '%$_GET[titulo]%'
        UNION ALL
        SELECT eventos_cientificos_id as id, titulo_evento as titulo, link_imagen, sinopsis_evento as sinopsis, 'evento_cientifico' as fuente FROM eventos_cientificos WHERE titulo_evento LIKE '%$_GET[titulo]%'
        UNION ALL
        SELECT colecciones_id as id, titulo_coleccion as titulo, link_imagen, sinopsis_coleccion as sinopsis, 'coleccion' as fuente FROM colecciones WHERE titulo_coleccion LIKE '%$_GET[titulo]%'
        UNION ALL
        SELECT noticias_id as id, titulo_noticia as titulo, link_imagen, sinopsis, 'noticia' as fuente FROM noticias WHERE titulo_noticia LIKE '%$titulo%'
    ) AS registros_combinados ORDER BY id DESC LIMIT 20 OFFSET $offset
";

$resultado = $conexion->query($query);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fondo Editorial</title>

    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/colecciones.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">

    <link rel="shortcut icon" href="img/Logo Fondo Editorial.png" type="image/x-icon">
</head>

<body>
    <?php include "header.php" ?>
    <div class="contenedor">

        <div id="container-colecciones">

            <?php

            while ($row = $resultado->fetch_assoc()) {

                echo "
                        <div class='elements'>";
                switch ($row['fuente']) {
                    case 'libro':
                        echo "<a href='libro.php?id=$row[id]'>";
                        break;
                    
                    case 'revista':
                        echo "<a href='revista.php?id=$row[id]'>";
                        break;
                    
                    case 'evento_cientifico':
                        echo "<a href='evento_cientifico.php?id=$row[id]'>";
                        break;
                    case 'coleccion':
                        echo "<a href='coleccion.php?id=$row[id]'>";
                        break;

                    case 'noticia':

                        $noticia = $conexion->query("SELECT * FROM noticias WHERE noticias_id=$row[id]")->fetch_assoc();

                        echo "<a href='$noticia[link_noticia]'>";
                        break;
                    default:
                        # code...
                        break;
                }
                echo "
                        <img src='$row[link_imagen]'>
                    </a>
                </div>
                ";
            }
            ?>
        </div>

        <div class="botones-avn-ret">


            <?php

            if ($pagina_actual > 0) {
                echo '<a href="?pagina=' . ($pagina_actual - 1) . '&titulo='. $_GET['titulo'] .'" id="retroceder">Retroceder</a>';
            }

            $total_paginas = ceil($total_colecciones['total_registros'] / 20);

            // Verifica si la página actual es menor que el total de páginas
            if ($pagina_actual < $total_paginas - 1) {
                // Muestra el botón de "avanzar"
                echo '<a href="?pagina=' . ($pagina_actual + 1) . '&titulo='. $_GET['titulo'] .'" id="avanzar">Avanzar</a>';
            }

            ?>


        </div>

    </div>
    <?php include "footer.php" ?>

    <script src="js/header.js"></script>
</body>

</html>
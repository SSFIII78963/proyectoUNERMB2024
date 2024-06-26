<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fondo Editorial</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/revistas.css">
    <link rel="shortcut icon" href="img/Logo Fondo Editorial.png" type="image/x-icon">
</head>

<body>
    <?php include "header.php" ?>
    <div class="contenedor">
        <div id="container-revistas">

            <?php

            include("php/conexiondb.php");

            $conexion = conexion();

            // Obtén el índice de la página actual (por ejemplo, desde una variable GET o POST)
            $pagina_actual = isset($_GET['pagina']) ? intval($_GET['pagina']) : 0;

            // Calcula el offset para la consulta
            $offset = $pagina_actual * 20;
            $total_revistas = $conexion->query("SELECT COUNT(*) AS total_registros FROM revistas")->fetch_assoc();

            // Consulta la base de datos para obtener las siguientes 20 revistas
            $resultado = $conexion->query("SELECT * FROM revistas ORDER BY revistas_id DESC LIMIT 20 OFFSET $offset");

            while ($row = $resultado->fetch_assoc()) {
                echo "
                <div class='elements'>
                <a href='revista.php?id=$row[revistas_id]'>
                    <img src='$row[link_imagen]'>
                </a>
                </div>
                ";
            }
            ?>
        </div>
    </div>
    <div class="botones-avn-ret">


        <?php

        if ($pagina_actual > 0) {
            echo '<a href="?pagina=' . ($pagina_actual - 1) . '" id="retroceder">Retroceder</a>';
        }

        $total_paginas = ceil($total_revistas['total_registros'] / 20);

        // Verifica si la página actual es menor que el total de páginas
        if ($pagina_actual < $total_paginas - 1) {
            // Muestra el botón de "avanzar"
            echo '<a href="?pagina=' . ($pagina_actual + 1) . '" id="avanzar">Avanzar</a>';
        }

        ?>


    </div>
    <?php include "footer.php" ?>
    
    <script src="js/header.js"></script>
</body>

</html>
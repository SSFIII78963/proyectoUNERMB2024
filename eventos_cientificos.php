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
            <input type="search" placeholder="Buscar" class="buscadorcolecciones">

            <?php
                include("php/conexiondb.php");

                $conexion = conexion();

                $resultado = $conexion->query("SELECT * FROM eventos_cientificos");

                while($row = $resultado->fetch_assoc()){
                    echo "
                        <div class='elements'>
                            <a href='evento_cientifico.php?id=$row[eventos_cientificos_id]'>
                                <img src='$row[link_imagen]'>
                            </a>
                        </div>
                    ";
                }
            ?>
        </div>

        <div class="botones-avn-ret">


            <button id="retroceder">Re. Página</button>
            <button id="avanzar">Av. Página</button>


        </div>
    </div>
    <?php include "footer.php" ?>

    <script src="js/header.js"></script>
</body>

</html>
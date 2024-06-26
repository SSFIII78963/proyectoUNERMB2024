<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fondo Editorial</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/revistas.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <script src="js/header.js"></script>
    <link rel="shortcut icon" href="img/Logo Fondo Editorial.png" type="image/x-icon">
</head>

<body>
    <?php include "header.php" ?>
    <div class="contenedor">
        <div id="container-revistas">
            <div class="contenedor-botones">
                <input type="search" placeholder="Buscar..." class="buscar_revistas">
            </div>

            <?php

                include ("php/conexiondb.php");

                $conexion = conexion();

                $resultado = $conexion->query("SELECT * FROM revistas ORDER BY  revistas_id DESC LIMIT 10");

                while ($row = $resultado->fetch_assoc()) {
                    echo "
                <div class='elements'>
                <a href='resvista.php?id=$row[revistas_id]'>
                    <img src='$row[link_imagen]'>
                </a>
                <p class='titulo'>$row[titulo]</p>
                </div>
                ";
                }
            ?>
        </div>
    </div>
    <div class="botones-avn-ret">


        <button id="retroceder">Re. Página</button>
        <button id="avanzar">Av. Página</button>


    </div>
    <?php include "footer.php" ?>
    <script src="js/revistas.js"></script>
</body>

</html>
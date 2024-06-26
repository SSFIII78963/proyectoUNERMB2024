<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fondo Editorial</title>

    <link href='https://fonts.googleapis.com/css?family=Rammetto One' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>

    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/carrusel.css">
    <link rel="stylesheet" href="css/carrusel_principal.css">
    <link rel="stylesheet" href="css/index_noticias.css">

    <link rel="shortcut icon" href="img/Logo Fondo Editorial.png" type="image/x-icon">
</head>

<body>
    <?php
    include("header.php");
    include ("php/conexiondb.php");

    $conexion = conexion();
    ?>
    <?php
    include ("carrusel_principal.php");
    ?>
    <?php
    $link_carrusel = "colecciones.php";
    $titulo = "Colecciones Actualizadas";
    include("carrusel.php");
    ?>

    <?php
    $titulo = "Revistas";
    include("carrusel.php");
    ?>

    <?php
    $titulo = "Eventos Científicos";
    include("carrusel.php");
    ?>
    <?php include("index_noticias.php") ?>
    <?php
    include("footer.php");
    ?>


    <script src="js/carrusel.js"></script>
    <script src="js/header.js"></script>
    <script src="js/carrusel_principal.js"></script>
</body>

</html>
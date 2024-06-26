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
    <link rel="stylesheet" href="css/coleccion.css">

    <link rel="shortcut icon" href="img/Logo Fondo Editorial.png" type="image/x-icon">
</head>

<body>
    <?php include("header.php");

    include("php/conexiondb.php");

    $conexion = conexion();

    $id = $_GET['id'];

    $resultado = $conexion->query("SELECT * FROM colecciones WHERE colecciones_id = '$id' ")->fetch_assoc();

    ?>


    <div id="titulocoleccion">
        <div id="mask2">
            <div id="portadacoleccion">
                <img id="portada" src="<?= $resultado['link_imagen'] ?>">
            </div>

            <div class="descripcion">
                <h1 id="titulocol"><?= $resultado['titulo_coleccion'] ?></h1>
                <p id="descripcioncol"><?= $resultado['sinopsis_coleccion'] ?></p>
            </div>
        </div>
    </div>

    <!-- cuerpo de la coleccion -->

    <div id="container-coleccion">

        <?php

        $resultado = $conexion->query("SELECT * FROM libro WHERE coleccion_id = '$id' ");

        while($row = $resultado->fetch_assoc()){
            echo "
                <div class='elementos'>
                    <a href='libro.php?id=$row[libro_id]'>
                        <img class='portada' src='$row[link_imagen]'>
                    </a>
                </div>
            ";
        }
        ?>
    </div>

    <div class="colecbotones">


        <button id="retroceder">Re. Página</button>
        <button id="avanzar">Av. Página</button>


    </div>


    <?php include("footer.php") ?>

    <script src="js/header.js"></script>
</body>

</html>
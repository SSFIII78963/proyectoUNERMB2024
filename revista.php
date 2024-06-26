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
    <link rel="stylesheet" href="css/libro.css">

    <link rel="shortcut icon" href="img/Logo Fondo Editorial.png" type="image/x-icon">
</head>

<body>
    <?php include("header.php");

    include("php/conexiondb.php");

    $conexion = conexion();

    $id = $_GET['id'];

    $resultado = $conexion->query("SELECT * FROM revistas WHERE revistas_id = '$id' ")->fetch_assoc();

    ?>
    <div id="titulocoleccion">
        <div id="mask2">
            <div id="portadacoleccion">
                <img id="portada" src="<?= $resultado['link_imagen'] ?>">
            </div>

            <div class="descripcion">
                <h1 id="titulocol"><?= $resultado['titulo'] ?></h1>
                <p id="descripcioncol"><?= $resultado['sinopsis'] ?></p>
            </div>
        </div>
    </div>
    <div class="libro">

        <iframe id="doc" src="<?= $resultado['link_drive'] ?>"></iframe>

    </div>

    <?php include("footer.php") ?>
    <script src="js/header.js"></script>

    <script>
        let titulocoleccion = document.querySelector("#titulocoleccion");
        let img = document.querySelector("#portada").src;

        titulocoleccion.style.backgroundImage = `url(${img})`;

    </script>
</body>

</html>
<?php

$query = "SELECT *
FROM (
    SELECT libro_id as id, titulo, link_imagen, sinopsis, fecha, 'libro' as fuente FROM libro
    UNION ALL
    SELECT revistas_id as id, titulo, link_imagen, sinopsis, fecha, 'revista' as fuente FROM revistas
    UNION ALL
    SELECT eventos_cientificos_id as id, titulo_evento as titulo, link_imagen, sinopsis_evento as sinopsis, fecha, 'evento_cientifico' as fuente FROM eventos_cientificos
) AS registros_combinados
ORDER BY fecha DESC LIMIT 5";
$resultado = $conexion->query($query);


?>


<div class="carrusel-principal">
    <div class="carrusel-principal-mask">
        <div class="carrusel-principal-texto">
            <div class="contenedor-titulo-descripcion">

                <?php
                while ($row = $resultado->fetch_assoc()) {
                    echo "<div class='titulo-descripcion'>
                        <h1>$row[titulo]</h1>
                        <p>$row[sinopsis]</p>
                    </div>";
                }

                ?>
            </div>
            <div class="carrusel-principal-botones">
                <div class="carrusel-principal-leer">
                    <?php 

                        $resultado = $conexion->query($query);
                        while ($row = $resultado->fetch_assoc()) {
                            switch($row['fuente']){
                                case "libro": echo "<a href='libro.php?id=$row[id]' id='carrusel-principal-leer'>LEER</a>";
                                    break;
                                case "revista": echo "<a href='revista.php?id=$row[id]' id='carrusel-principal-leer'>LEER</a>";
                                    break;
                                case "evento_cientifico": echo "<a href='evento_cientifico.php?id=$row[id]' id='carrusel-principal-leer'>LEER</a>";
                                    break;
                            }
                        }
                    
                    ?>
                </div>

                <div class="carrusel-principal-botones-buttons">
                    <button id="adelante">
                        < </button>
                            <button id="atras"> > </button>
                </div>
            </div>
        </div>
        <div class="carrusel-principal-thumbnails">
            <?php
                $resultado = $conexion->query($query);
                while ($row = $resultado->fetch_assoc()) {
                    echo "<img src=$row[link_imagen]>";
                }
            ?>
        </div>
    </div>
</div>

</html>
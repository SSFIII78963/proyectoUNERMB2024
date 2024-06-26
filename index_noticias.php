<div class="contenedor_noticias_index">
    <a href="noticias.php">
        <h1>Noticias</h1>
    </a>
    <div class="noticias_index">
        <?php 

            $resultado = $conexion->query("SELECT titulo_noticia, sinopsis, link_imagen, link_noticia FROM noticias ORDER BY  noticias_id DESC LIMIT 3");

            while($row = $resultado->fetch_assoc()){
                echo "<div class='noticia_index'>";
                echo "<img src='$row[link_imagen]'>";
                echo "<div>";
                echo "<h2>$row[titulo_noticia]</h2>";
                echo "<p>$row[sinopsis]</p>";
                echo "<a href=$row[link_noticia]>LEER MÁS</a>";
                echo "</div>";
                echo "</div>";
            }

            $conexion->close();

        ?>
    </div>
</div>
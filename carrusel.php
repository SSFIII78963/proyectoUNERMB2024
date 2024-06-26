<div class="contenedor-carrusel">

    <a href="<?= $link_carrusel ?>">
        <h1><?= $titulo; ?></h1>
    </a>
    <div style="position: relative;">
        <div class="carrusel">
            <?php

            switch ($titulo) {
                case 'Colecciones Actualizadas':
                    $resultado = $conexion->query("SELECT * FROM colecciones ORDER BY  colecciones_id DESC LIMIT 10");

                    while ($row = $resultado->fetch_assoc()) {
                        echo "
                    <div class='elemento-carrusel'>
                        <a href='coleccion.php?id=$row[colecciones_id]'>
                            <img src='$row[link_imagen]'>
                        </a>
                    </div>
                    ";
                    }
                    break;
                case 'Revistas':
                    $resultado = $conexion->query("SELECT * FROM revistas ORDER BY  revistas_id DESC LIMIT 10");

                    while ($row = $resultado->fetch_assoc()) {
                        echo "
                    <div class='elemento-carrusel'>
                        <a href='revista.php?id=$row[revistas_id]'>
                            <img src='$row[link_imagen]'>
                        </a>
                    </div>
                    ";
                    }
                    break;
                case 'Eventos Científicos':
                    $resultado = $conexion->query("SELECT * FROM eventos_cientificos ORDER BY  eventos_cientificos_id DESC LIMIT 10");

                    while ($row = $resultado->fetch_assoc()) {
                        echo "
                    <div class='elemento-carrusel'>
                        <a href='evento_cientifico.php?id=$row[eventos_cientificos_id]'>
                            <img src='$row[link_imagen]'>
                        </a>
                    </div>
                    ";
                    }
                    break;
                default:
                    # code...
                    break;
            }


            ?>
        </div>
        <button class="btn-retroceder">
            <svg width="64px" height="64px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" stroke="#ffffff" stroke-width="0.00024000000000000003" transform="rotate(180)">
                <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                <g id="SVGRepo_iconCarrier">
                    <path d="M9.71069 18.2929C10.1012 18.6834 10.7344 18.6834 11.1249 18.2929L16.0123 13.4006C16.7927 12.6195 16.7924 11.3537 16.0117 10.5729L11.1213 5.68254C10.7308 5.29202 10.0976 5.29202 9.70708 5.68254C9.31655 6.07307 9.31655 6.70623 9.70708 7.09676L13.8927 11.2824C14.2833 11.6729 14.2833 12.3061 13.8927 12.6966L9.71069 16.8787C9.32016 17.2692 9.32016 17.9023 9.71069 18.2929Z" fill="#ffffff"></path>
                </g>
            </svg>
        </button>
        <button class="btn-avanzar">
            <svg width="64px" height="64px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" stroke="#ffffff" stroke-width="0.00024000000000000003" transform="rotate(0)">
                <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                <g id="SVGRepo_iconCarrier">
                    <path d="M9.71069 18.2929C10.1012 18.6834 10.7344 18.6834 11.1249 18.2929L16.0123 13.4006C16.7927 12.6195 16.7924 11.3537 16.0117 10.5729L11.1213 5.68254C10.7308 5.29202 10.0976 5.29202 9.70708 5.68254C9.31655 6.07307 9.31655 6.70623 9.70708 7.09676L13.8927 11.2824C14.2833 11.6729 14.2833 12.3061 13.8927 12.6966L9.71069 16.8787C9.32016 17.2692 9.32016 17.9023 9.71069 18.2929Z" fill="#ffffff"></path>
                </g>
            </svg>
        </button>
    </div>
</div>
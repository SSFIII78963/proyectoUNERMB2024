carrusel_principal = document.querySelector(".carrusel-principal");
thumbnails = document.querySelector(".carrusel-principal-thumbnails");
imagenes_carrusel_principal = thumbnails.querySelectorAll("img");
carrusel_principal_buttons_adelante = document.querySelector("#adelante");
carrusel_principal_buttons_atras = document.querySelector("#atras");
contenedor_titulo_descripcion = document.querySelector(".contenedor-titulo-descripcion");
titulo_descripcion = document.querySelectorAll(".titulo-descripcion");
contenedor_boton_leer = document.querySelector(".carrusel-principal-leer");
boton_leer = document.querySelectorAll("#carrusel-principal-leer");

for (let index = 0; index < titulo_descripcion.length; index++) {
    element = titulo_descripcion[index];
    element2 = boton_leer[index];

    if (index == 0) {
        continue;
    } else {
        element.style.display = "none";
        element2.style.display = "none";
    }
}

carrusel_principal.style.backgroundImage = `url(${imagenes_carrusel_principal[0].src})`;
imagenes_carrusel_principal[0].style.outline = "7px solid var(--primary-color)";

carrusel_principal_buttons_adelante.addEventListener("click", () => {
    imagenes_carrusel_principal = thumbnails.querySelectorAll("img");
    boton_leer = document.querySelectorAll("#carrusel-principal-leer");
    titulo_descripcion = document.querySelectorAll(".titulo-descripcion");

    imagenes_carrusel_principal[0].style.outline = "none";
    thumbnails.removeChild(imagenes_carrusel_principal[0]);
    thumbnails.appendChild(imagenes_carrusel_principal[0]);
    carrusel_principal.style.backgroundImage = `url(${imagenes_carrusel_principal[1].src})`;
    imagenes_carrusel_principal[1].style.outline = "7px solid var(--primary-color)";

    titulo_descripcion[0].style.display = "none";
    imagenes_carrusel_principal[0].style.animation = "none";
    contenedor_titulo_descripcion.removeChild(titulo_descripcion[0]);
    contenedor_titulo_descripcion.appendChild(titulo_descripcion[0]);
    titulo_descripcion[1].style.display = "flex";
    titulo_descripcion[1].style.flexDirection = "column";

    boton_leer[0].style.display = "none";
    contenedor_boton_leer.removeChild(boton_leer[0]);
    contenedor_boton_leer.appendChild(boton_leer[0]);
    boton_leer[1].style.display = "inline-block";

    clearInterval(intervalo_carrusel_principal);

    intervalo_carrusel_principal = setInterval(avanzar, 10000);
})

function avanzar() {
    imagenes_carrusel_principal = thumbnails.querySelectorAll("img");
    boton_leer = document.querySelectorAll("#carrusel-principal-leer");
    titulo_descripcion = document.querySelectorAll(".titulo-descripcion");

    imagenes_carrusel_principal[0].style.outline = "none";
    thumbnails.removeChild(imagenes_carrusel_principal[3]);
    thumbnails.prepend(imagenes_carrusel_principal[3]);
    carrusel_principal.style.backgroundImage = `url(${imagenes_carrusel_principal[3].src})`;
    imagenes_carrusel_principal[3].style.outline = "7px solid var(--primary-color)";
    imagenes_carrusel_principal[3].style.animation = "aparecer 0.2s linear";


    titulo_descripcion[0].style.display = "none";
    contenedor_titulo_descripcion.removeChild(titulo_descripcion[3]);
    contenedor_titulo_descripcion.prepend(titulo_descripcion[3]);
    titulo_descripcion[3].style.display = "flex";
    titulo_descripcion[3].style.flexDirection = "column";

    boton_leer[0].style.display = "none";
    contenedor_boton_leer.removeChild(boton_leer[3]);
    contenedor_boton_leer.prepend(boton_leer[3]);
    boton_leer[3].style.display = "inline-block";

    clearInterval(intervalo_carrusel_principal);

    intervalo_carrusel_principal = setInterval(avanzar, 10000);
}

carrusel_principal_buttons_atras.addEventListener("click", avanzar)

intervalo_carrusel_principal = setInterval(avanzar, 2000);
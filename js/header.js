botones = document.querySelector(".botones");
buscador = document.querySelector(".buscador");
boton_desplegar = document.querySelector("#btn-desplegar");
boton_buscar = document.querySelector("#btn-buscar");
input_buscador = document.querySelector("#btn-buscar-pc input");
mediaQuery = window.matchMedia("(width>=1024px)");

desplegar = true;
buscar = true;
boton_desplegar.addEventListener("click", () => {
    if (desplegar) {
        botones.style.display = "flex";
        buscador.style.display = "none";
        desplegar = false;
        buscar = true;
    } else {
        botones.style.display = "none";
        desplegar = true;
    }
})
boton_buscar.addEventListener("click", () => {
    if (buscar) {
        buscador.style.display = "flex";
        botones.style.display = "none";
        buscar = false;
        desplegar = true;
    } else {
        buscador.style.display = "none";
        buscar = true;
    }
})
mediaQuery.addEventListener("change", (event) => {
    if (event.matches) {
        botones.style.display = "none";
        buscador.style.display = "none";
        desplegar = true;
        buscar = true;
    }
});


const observer = new IntersectionObserver((entries) => {
    if (entries[0].isIntersecting) {
        targetElement.style.position = "static";
        banner.style.marginBottom = "0em";
    } else {
        targetElement.style.position = "fixed";
        targetElement.style.top = "0";
        targetElement.style.zIndex = "1"
        targetElement.style.borderTop = "none"
        banner.style.marginBottom = "2.8em";
    }
});

// Observar un elemento específico
var targetElement = document.querySelector('.header-container');
var banner = document.querySelector('.banner');
observer.observe(banner);

var targetElement = document.querySelector('.header-container');
var banner = document.querySelector('.banner');
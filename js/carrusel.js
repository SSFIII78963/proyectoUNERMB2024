carrusel = document.querySelectorAll(".carrusel");
btn_retroceder = document.querySelectorAll(".btn-retroceder");
btn_avanzar = document.querySelectorAll(".btn-avanzar");


DiccionarioLibros = {};

for (let index = 0; index < carrusel.length; index++) {

    

    libros = Array.from(carrusel[index].children).filter(el => el.classList.contains('elemento-carrusel'));

    DiccionarioLibros[index] = libros;

    rectCarrusel = carrusel[index].getBoundingClientRect();

    width = 0;

    DiccionarioLibros[index].forEach(element => {
        rectLibro = element.getBoundingClientRect();

        width = width + rectLibro.width;

        if (width > rectCarrusel.width) {
            element.style.opacity = "0.2";
        } else {
            element.style.opacity = "1";
        }

    });
    carrusel[index].addEventListener("scroll", function () {

        DiccionarioLibros[index].forEach(element => {
            var rectLibro = element.getBoundingClientRect();

            if (rectLibro.right > rectCarrusel.right || 0 > rectLibro.left) {
                element.style.opacity = "0.2";
            } else {
                element.style.opacity = "1";
            }
        })
    })
    window.addEventListener("resize", function () {
        rectCarrusel = carrusel[index].getBoundingClientRect();
        DiccionarioLibros[index].forEach(element => {
            rectLibro = element.getBoundingClientRect();

            if (rectLibro.right > rectCarrusel.right || 0 > rectLibro.left) {
                element.style.opacity = "0.2";
            } else {
                element.style.opacity = "1";
            }
        })
    })
    btn_avanzar[index].addEventListener("click", () => {

        avanzar = false;

        LibrosArray = [];
        LibrosArray = DiccionarioLibros[index];

        LibrosArray.forEach(element => {

            if (element.style.opacity == "1") {
                avanzar = true;
            }
            if (element.style.opacity != "1" && avanzar == true) {
                position = element.offsetLeft;
                carrusel[index].scrollBy({top: 0, left: position, behavior: "smooth"});
                avanzar = false;
            }
        })
    })
    btn_retroceder[index].addEventListener("click", () => {

        LibrosArray = [];
        LibrosArray = DiccionarioLibros[index];

        width = 0;
        retroceder = false;

        for (let indice = LibrosArray.length-1; indice >= 0; indice--) {

            element = LibrosArray[indice];

            if(element.style.opacity==1){
                retroceder = true;
                width = width + element.getBoundingClientRect().width;
            }if (element.style.opacity!=1 && retroceder==true) {
                carrusel[index].scrollBy({top: 0, left: -width, behavior: "smooth"})
                retrocedio=true;
            }
        }
    })
}

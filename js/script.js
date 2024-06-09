var portadas=document.getElementsByClassName("portadas");
var background = document.getElementsByClassName("colecciones_act")[0];

for (let index = 0; index < portadas.length; index++) {

    portadas[index].addEventListener("mouseover", () => {
        url=portadas[index].src;
        background.style.backgroundImage = `url(${url})`;
    });
};

var botonesheader=document.querySelectorAll("#header-a");
var divheader=document.querySelectorAll("#giro");

for (let index = 0; index < botonesheader.length; index++) {
    const element = botonesheader[index];
    
    element.addEventListener("mouseover", function() {
        divheader[index].style.animation="girar-borde .5s  linear";
    })
    element.addEventListener("mouseout", function() {
        divheader[index].style.animation="none";
    })
}
    

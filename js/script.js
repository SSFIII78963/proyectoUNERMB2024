var portadas=document.getElementsByClassName("portadas");
var background = document.getElementsByClassName("colecciones_act")[0];

for (let index = 0; index < portadas.length; index++) {

    portadas[index].addEventListener("mouseover", () => {
        url=portadas[index].src;
        background.style.backgroundImage = `url(${url})`;
    });
};
    

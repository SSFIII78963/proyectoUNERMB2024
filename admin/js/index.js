header = document.querySelector("header");

button = document.createElement("button");
button.innerHTML = `<svg width="64px" height="64px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M11.7071 4.29289C12.0976 4.68342 12.0976 5.31658 11.7071 5.70711L6.41421 11H20C20.5523 11 21 11.4477 21 12C21 12.5523 20.5523 13 20 13H6.41421L11.7071 18.2929C12.0976 18.6834 12.0976 19.3166 11.7071 19.7071C11.3166 20.0976 10.6834 20.0976 10.2929 19.7071L3.29289 12.7071C3.10536 12.5196 3 12.2652 3 12C3 11.7348 3.10536 11.4804 3.29289 11.2929L10.2929 4.29289C10.6834 3.90237 11.3166 3.90237 11.7071 4.29289Z" fill="#71cbfc"></path> </g></svg>`;
button.style.display = "none";
header.prepend(button);
button.addEventListener("click", () => {
    opciones_1.style.display = "flex";
    button.style.display = "none";
    opciones_2.style.display = "none";
})

opciones_1 = document.querySelector("#opciones-1");
botones_opciones_1 = document.querySelectorAll("#opciones-1 button");
valor_botones_opciones_1 = document.querySelectorAll("#opciones-1 button p");

opciones_2 = document.querySelector("#opciones-2");
botones_opciones_2 = document.querySelectorAll("#opciones-2 button");
valor_botones_opciones_2 = document.querySelectorAll("#opciones-2 button p");

botones_opciones_1.forEach(element => {
    element.addEventListener("click", () => {
        button.style.display = "inline-block";
        opciones_1.style.display = "none";
        opciones_2.style.display = "flex";

        value_primer_opcion = element.querySelector("p").innerHTML.toLowerCase();
    })
});
botones_opciones_2.forEach(element => {
    element.addEventListener("click", () => {
        value_segunda_opcion = element.querySelector("p").innerHTML.toLowerCase().replaceAll(" ", "_");
        
        if(value_primer_opcion=="buscar"){
            window.location.href = "buscador.php?buscar="+value_segunda_opcion;
        } if (value_segunda_opcion) {
            
        } else {
            alert("Nada se seleccionó")
        }

    })
});


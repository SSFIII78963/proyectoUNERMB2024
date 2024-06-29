addEventListener('DOMContentLoaded', ()=>{
    let input_search = document.querySelector('#search')
    let table_container = document.querySelector('#results tbody') // ya aqui acedemos al tbody de  la tabla
    let container = document.querySelector('#tableResults')
    let error = document.querySelector('.errors')    
    let input_criteria = '';
    let input_get = document.querySelector('#input_get').value;

    if(input_search){
        input_search.addEventListener('input', event => {
            input_criteria = event.target.value.toUpperCase() // todo esto va capturar lo que escribamos en el input
            mostrar_resultados()
        }
        )
    }
    //enviar datos al server
    const searchData = async () => {
         let data = new FormData()
         data.append('busqueda', input_criteria ) // toma el imput y lo pone en la variable post del php
         data.append('input_get', input_get)
         try{
            // hacemos la peticion
            const response = await fetch('./buscador_query.php', {
                method: 'POST',
                body: data
            })
            // retornmos la peticion y la convertimos a json
            return response.json()

         }catch(error){
            alert(`${'hubo un error al momento de hacer la consulta'}${error.message}`)
            console.log(error)
         }
    
        }

        // creamos la funcion param mostrar los datos 

        const mostrar_resultados = () =>{
            // tomamos los datos de la consulta
            searchData()
            .then(result => {
                console.log(result)
                table_container.innerHTML= '';
                if(typeof result.data !== 'undefined' && !result.data){
                    error.style.display = 'block';
                    error.querySelector('p').innerHTML = `no hay  resutados en el criterio 
                    <span class="bold">${input_criteria}</span>`
                    container.style.display= 'none';
                    
                }else{
                    container.style.display = 'block';
                    error.style.display = 'none'; 
                    switch (input_get) {
                        case "libro":
                            for (const i of result) {
                                const row = document.createElement('tr')
                                row.innerHTML=`
                                <td>${i.libro_id}</td>
                                <td>${i.titulo}</td>
                                <td>${i.sinopsis}</td>
                                <td>${i.link_imagen}</td>
                                <td>${i.link_libro}</td>
                                <td>${i.titulo_coleccion}</td>
                                <td>${i.fecha}</td>
                                <div class="centro">
                                <a href="borrar_query.php?buscar=libro&id=${i.libro_id}"class="btn_delete">eliminar</a>
                                <a href="modificar_querytb.php?buscar=libro&id=${i.libro_id}" class="btn-blue-modificar">editar</a>
                                </div>
                                `
                                table_container.appendChild(row)
                            }
                            break;
                            case "colecciones":
                                for (const i of result) {
                                    const row = document.createElement('tr')
                                    row.innerHTML=`
                                    <td>${i.colecciones_id}</td>
                                    <td>${i.titulo_coleccion}</td>
                                    <td>${i.sinopsis_coleccion}</td>
                                    <td>${i.link_imagen}</td>
                                    <td>${i.fecha}</td>
                                    <td>${i.Ult_Actualizacion}</td>
                                    
                                    <div class="centro">
                                    <a onclick="return eliminar()" href="buscador.php?buscar=colecciones&id=${i.colecciones_id}"class="btn_delete">eliminar</a>
                                    <a href="modificar_querytb.php?buscar=colecciones&id=${i.colecciones_id}" class="btn-blue-modificar">editar</a>
                                    </div>
                                    `
                                    table_container.appendChild(row)
                                }
                            break;
                            case "eventos_cientificos":
                                for (const i of result) {
                                    const row = document.createElement('tr')
                                    row.innerHTML=`
                                    <td>${i.eventos_cientificos_id}</td>
                                    <td>${i.titulo_evento}</td>
                                    <td>${i.sinopsis_evento}</td>
                                    <td>${i.link_imagen}</td>
                                    <td>${i.link_evento}</td>
                                    <td>${i.fecha}</td>
                                    
                                    <div class="centro">
                                    <a onclick="return eliminar()" href="buscador.php?buscar=eventos_cientificos&id=${i.eventos_cientificos_id}"class="btn_delete">eliminar</a>
                                    <a href="modificar_querytb.php?buscar=eventos_cientificos&id=${i.eventos_cientificos_id}" class="btn-blue-modificar">editar</a>
                                    </div>
                                    `
                                    table_container.appendChild(row)
                                } 
                            break;
                                case "noticias":
                                    for (const i of result) {
                                        const row = document.createElement('tr')
                                        row.innerHTML=`
                                        <td>${i.noticias_id}</td>
                                        <td>${i.titulo_noticia}</td>
                                        <td>${i.sinopsis}</td>
                                        <td>${i.link_imagen}</td>
                                        <td>${i.link_noticia}</td>
                                        <td>${i.fecha}</td>
                                        
                                        <div class="centro">
                                        <a onclick="return eliminar()" href="buscador.php?buscar=noticias&id=${i.noticias_id}"class="btn_delete">eliminar</a>
                                        <a href="modificar_querytb.php?buscar=noticias&=${i.noticias_id}" class="btn-blue-modificar">editar</a>
                                        </div>
                                        `
                                        table_container.appendChild(row)
                                    }
                                    break;
                                    case "revistas":
                                        for (const i of result) {
                                            const row = document.createElement('tr')
                                            row.innerHTML=`
                                            <td>${i.revistas_id}</td>
                                            <td>${i.titulo}</td>
                                            <td>${i.sinopsis}</td>
                                            <td>${i.link_imagen}</td>
                                            <td>${i.link_revista}</td>
                                            <td>${i.fecha}</td>
                                            
                                            <div class="centro">
                                            <a onclick="return eliminar()" href="buscador.php?buscar=revistas&id=${i.revistas_id}"class="btn_delete">eliminar</a>
                                            <a href="modificar_querytb.php?buscar=revistas&id=${i.libro_id}" class="btn-blue-modificar">editar</a>
                                            </div>
                                            `
                                            table_container.appendChild(row)

                                        }
                                    break;
                        default:
                            break;
                    }
                  
                }


            })
        }
            // muestra todos los registro de la tabla 
         mostrar_resultados() 
})






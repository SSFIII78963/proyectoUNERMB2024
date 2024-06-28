<table class="table-blue">
  <thead>
    <tr>
      <th class="th-blue">titulo_noticia</th>
      <th class="th-blue">sinopsis</th>
      <th class="th-blue">link_imagen</th>
      <th class="th-blue">link_noticia</th>
      
  </thead>
  <tbody>
    <tr>
      <td><input type="text"  name="titulo_noticia" maxlength="100" required class="input-blue"></td>
      <td><textarea  id="sinopsis"name="sinopsis"  maxlength="500" class="textarea-blue" required></textarea></td>
      <td><input type="text" name="link_imagen" maxlength="200" required class="input-blue"></td>
      <td><input type="text" name="link_noticia" maxlength="200" required class="input-blue"></td>
      <td><input type="submit" name="agregar_noticia"value="agregar" class="btn-blue-modificar_2" style="border-radius: 5px;"></td>
    </tr>
  </tbody>
</table>

<script>
    let div_set =  document.querySelector('.time')
    div_set.style.opacity = 1;
    div_set.style.display = 'block';
    setTimeout(function (){
    div_set.style.opacity = 0;
    div_set.style.display = 'none';
    }, 1000);
 </script>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styletb.css">
    <title>Document</title>
</head>
<body>
 <?php
    include_once 'tbusuario_query.php';
    include 'header.php';
 ?>
<form  class="" action="" method="POST" autocomplete="off">
    <table class="table-blue">
    <thead>
        <tr>
        <th class="th-blue">nombre_usuario</th> 
        <th class="th-blue">nombre</th>
        <th class="th-blue">apellido</th>
        <th class="th-blue">contraseña</th>
        </tr>
    </thead>
    <tbody>
       <tr>
        <td>
            <input type="text" name="nombre_usuario" maxlength="100" required>
        </td>
        <td>
        <input type="text" name="nombre" id="nombre" maxlength="100" required>
        </td>
        <td>
            <input type="text" name="apellido" maxlength="100" required> 
        </td>
        <td>
            <input type="password" name="contraseña" maxlength="100" require> 
        </td>
       
        <td>
            <input type="submit" name="insertar_usuario" value="insertar" class="btn-blue-modificar_2" style="border-radius: 5px;">
        </td>
    </tr>
      
  </tbody>
</table>
</form>
<script>
        let div_set =  document.querySelector('.time')
        div_set.style.opacity = 1;
        div_set.style.display = 'block';
         setTimeout(function (){
            div_set.style.opacity = 0;
            div_set.style.display = 'none';
        }, 3000);
 </script>
    
</body>
</html>
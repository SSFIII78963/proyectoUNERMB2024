<?php
include 'conexiondb.php';
include 'header.php';
$conn = conexion();
$result = $conn->query("SELECT * FROM usuarios");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <link rel="stylesheet" href="css/styletb.css">
    <title>Document</title>
</head>
<body>

<script>
        let div_set =  document.querySelector('.time')
        div_set.style.opacity = 1;
        div_set.style.display = 'block';
         setTimeout(function (){
            div_set.style.opacity = 0;
            div_set.style.display = 'none';
        }, 3000);
    </script>
<table class="table-blue">
    <thead>
        <tr>
        <th class="th-blue">nombre_usuario</th> 
        <th class="th-blue">nombre</th>
        <th class="th-blue">apellido</th>
        <th class="th-blue">contraseña</th>
        <th class="th-blue">fecha</th>
        </tr>
    </thead>
    <tbody>
        
       <?php
       while($item = $result->fetch_assoc()){?>
            <tr>
            <td><?php echo $item['nombre_usuario']?></td>
            <td><?php echo $item['nombre']?></td>
            <td><?php echo $item['apellido']?></td>
            <td><?php echo $item['usuario_password']?> </td>
            <td><?php echo $item['fecha']?></td>
            <td><a onclick="return eliminar()" href="eliminar_usuario_query.php?id=<?php echo $item['usuario_id']?>"class="btn_delete">eliminar</a></td>
            </tr>
           
            
         <?php
       } 
       ?>
   
  </tbody>
</table>
<script>
        function eliminar(){
            let  respuesta = confirm("quiere elimnar este registro?");
            return respuesta
        }
   </script>
 
</body>
</html>
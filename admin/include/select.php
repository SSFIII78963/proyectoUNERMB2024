<?php
include_once 'conexiondb.php';
$conn = conexion();
$consulta = "SELECT titulo_coleccion, colecciones_id FROM colecciones";
$result = $conn->query($consulta);
if($result){
 while($item = $result->fetch_array()){
    ?>
     <option value="<?php echo $item['colecciones_id'];?>">
       <?php echo "{$item['titulo_coleccion']}" ?>
     </option>
     <?php
  }
}
$conn->close()
?> 

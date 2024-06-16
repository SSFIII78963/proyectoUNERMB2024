<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fondo Editorial - Admin</title>

    <link rel="shortcut icon" href="img/Logo Fondo Editorial.png" type="image/x-icon">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/buscar.css">
</head>
<body>
    <?php
        include ("header.php");

        include("php/bd.php");

        $buscar = $_GET['buscar'];
        
        $query = "SELECT * FROM $buscar";

        $resultado = $conexion->query($query);

        echo "<table>";

        $campo = true;

        while ($row = $resultado->fetch_assoc()){

            if ($campo) {
                echo "<tr>";
                foreach($row as $campo => $registro){
                    echo "<th>$campo</th>";
                }
                echo "</tr>";
            }

            echo "<tr>";
            foreach($row as $campo => $registro){
                echo "<td>$registro</td>";
            }
            echo "<td>";
            echo $row[$buscar."_id"]; 
            echo $row[$buscar."_id"]; 
            echo "</td>";
        };
        echo "</table>";
        
    ?>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/styletb.css">
</head>
<body>
    <?php
    include 'conexiondb.php';
    include 'header.php';
    $conn=conexion();
    $resultado= $conn->query("SELECT * FROM registro");

    $header=TRUE;
    echo "<table class='table-blue'>";
    while($row=$resultado->fetch_assoc()){
        if($header){
            echo "<thead>";
            foreach($row as $campo=> $registro){
            echo "<th class='th-blue'>";
            echo $campo;
            echo "</th >";
             
            }
            echo"</thead>"; 
            $header=FALSE;
        }
        echo"<tr>";
        foreach($row as $campo=> $registro){
            echo "<td>$registro</td>";
             
            }
        echo"</tr>";
    }
    echo "</table>";
    ?>
</body>
</html>
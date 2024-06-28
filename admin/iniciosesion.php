<?php
?>
<!DOCTYPE html>
<html>
<head>
	<title>Iniciar Sesion - Fondo Editorial UNERMB</title>
	<link rel="stylesheet" type="text/css" href="./css/iniciosesion.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
</head>
<body>
	<?php
	include ("loggin.php"); 
	
	?>
	<div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true">

			<div class="signup">
				<form>
					<label for="chk" aria-hidden="true">Bienvenido</label>
					<img src="img/Logo Fondo Editorial.png " alt="" height=100px width=100px class="logo">
					<style>
						.logo{
							margin:0 auto;
							display: flex;
							justify-content: center;
						    align-items: center ;
						}
					</style>
					
				</form>
			</div>

			<div class="login">
				<form action="loggin.php" method ="POST">
					<label for="chk" aria-hidden="true">Iniciar Sesion</label>
					<input type="text" name="User" placeholder="Usuario" required="">
					<input type="password" name="pswd" placeholder="Password" required="">
					<input type="submit" value="login" name="loginbutton">
				</form>
			</div>
	</div>
</body>
</html>
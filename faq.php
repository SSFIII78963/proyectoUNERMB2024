<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Fondo Editorial</title>

	<link href='https://fonts.googleapis.com/css?family=Rammetto One' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>

	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/header.css">
	<link rel="stylesheet" href="css/footer.css">
	<link rel="stylesheet" href="css/faq.css">

	<link rel="shortcut icon" href="img/Logo Fondo Editorial.png" type="image/x-icon">
</head>

<body>
	<?php include("header.php") ?>
	<div class="faq">
		<div class="preguntasyrespuestas" id="quienes-somos">
			<button onclick="toggleCaja('caja1')" class="preguntas">¿Quienes somos?</button>
			<div class="respuestas" id="caja1">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
			</div>
		</div>
		<div class="preguntasyrespuestas" id="funciones">
			<button onclick="toggleCaja('caja2')" class="preguntas">¿Cuáles son las funciones del Fondo Editorial?</button>
			<div class="respuestas" id="caja2">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
			</div>
		</div>
		<div class="preguntasyrespuestas" id="publicar-libros">
			<button onclick="toggleCaja('caja3')" class="preguntas">¿Cómo puedo publicar mis libros?</button>
			<div class="respuestas" id="caja3">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
			</div>
		</div>

	</div>
	<div class="crew">
		<img id="imgcrew" src="img/crew.png">
		<div class="crew-mates">
			<h1>Equipo del Fondo Editorial UNERMB</h1>
			<h2>Coordinador (E)</h2>
			<p>Henry Alberto Rodríguez</p>
			<h2>Jefe de publicaciones</h2>
			<p>Josué Fonseca</p>
			<h2>Jefe de imprenta</h2>
			<p>Aibert Dominguez</p>
			<h2>Diseñador gráfico</h2>
			<p>Eduardo Rubio</p>
			<h2>Diagramadora</h2>
			<p>María Bastidas</p>
			<h2>Asistente administrativo</h2>
			<p>Jhoanny Díaz</p>
		</div>
	</div>
	<script type="text/javascript" src="js/faq.js"></script>
	<script src="js/header.js"></script>

	<?php include("footer.php") ?>
</body>

</html>
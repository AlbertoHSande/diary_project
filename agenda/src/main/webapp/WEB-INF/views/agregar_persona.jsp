<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Agregar Persona</title>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<a href="/agenda">Volver</a>
			<h1>Nueva Persona</h1>
		</div>
		<div id="main">
			<form action="save" method="post" modelAttribute="persona">

				<div class="form-group">
					<label for="nombre">Nombre:</label> <input type="text"
						class="form-control" id="nombre" name="nombre" required="required" value="R2"> 

				</div>

				<div class="form-group">
					<label for="apellido1">1er Apellido: </label> <input type="text" value="RR"
						class="form-control" id="apellido1" name="apellido1"
						required="required">
				</div>

				<div class="form-group">
					<label for="apellido2">2º Apellido: </label> <input type="text" value="RR"
						class="form-control" id="apellido2" name="apellido2"
						required="required">
				</div>

				<div class="form-group">
					<label for="dni">Dni:</label> <input type="text" value="12Y"
						class="form-control" id="dni" name="dni" required="required">
				</div>

				<div class="form-group">
					<label for="fecha">Fecha:</label> <input type="date" value="11/10/2011"
						class="form-control" id="fecha" name="fecha" required="required">
				</div>

				<div class="form-group">
					<label for="idEmpleado">Dni:</label> <input type="text" value="4"
						class="form-control" id="idEmpleado" name="idEmpleado" required="required">
				</div>

				<button type="submit" class="btn btn-success">Agregar</button>

			</form>
		</div>
	</div>


</body>
</html>
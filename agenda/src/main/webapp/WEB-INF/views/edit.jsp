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
			<a href="./"><img src="<c:url value='/resources/images/atras.jpg' />" width=30px/></a>
			<h1>Editar Persona</h1>
		</div>
		<div id="main">
			<form action="save"  method="post">

				<div class="form-group">
					<input type="hidden" id="id" name="id" value="${persona.id}">
				
					<label for="nombre">Nombre:</label> <input type="text"
						class="form-control" id="nombre" name="nombre" required="required" value="${persona.nombre}"> 

				</div>

				<div class="form-group">
					<label for="apellido1">1er Apellido: </label> <input type="text" value="${persona.apellido1}"
						class="form-control" id="apellido1" name="apellido1"
						required="required">
				</div>

				<div class="form-group">
					<label for="apellido2">2º Apellido: </label> <input type="text" value="${persona.apellido2}"
						class="form-control" id="apellido2" name="apellido2"
						required="required">
				</div>

				<div class="form-group">
					<label for="dni">Dni:</label> <input type="text" value="${persona.dni}"
						class="form-control" id="dni" name="dni" required="required">
				</div>

				<div class="form-group">
					<label for="fecha">Fecha:</label> <input type="date" value="${persona.fechaNacimiento}"
						class="form-control" id="fechaNacimiento" name="fechaNacimiento" required="required">
				</div>

				<div class="form-group">
					<label for="idEmpleado">Dni:</label> <input type="text" value="${persona.idEmpleado}"
						class="form-control" id="idEmpleado" name="idEmpleado" required="required" hidden="true">
				</div>

				<button type="submit" class="btn btn-success">Agregar</button>

			</form>
		</div>
	</div>


</body>
</html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>LISTADO DE Personas</title>
</head>
<body>
	<h1>Lista de personas</h1>
	<button type="button" class="btn btn-success"  onClick="location.href = 'new' ">Añadir</button>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Acciones</th>
		</tr>
		<c:forEach var="persona" items="${persona}" varStatus="status">

			<tr>
				<td>${status.index + 1}</td>
				<td>${persona.nombre}</td>
				<td>${persona.apellido1}</td>
				<td><a href="edit?id=${persona.id}">Modificar</a>
					&nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=${persona.id}">Eliminar</a>
					&nbsp;&nbsp;&nbsp;&nbsp; <a href="DetalleUser.jsp?id=${persona.id}">Detalle</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
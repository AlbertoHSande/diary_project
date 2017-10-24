<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value='/resources/css/bootstrap.css' />" rel="stylesheet"></link>
<title>LISTADO DE Personas</title>
</head>
<body>
	<h1>Lista de personas</h1>
	<button type="button" class="btn btn-success"  onClick="location.href = 'new' ">Añadir</button>
	<button type="button" class="btn btn-success"  onClick="location.href = 'busca' ">busca</button>
	
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
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
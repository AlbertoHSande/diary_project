<!DOCTYPE html>
<html>
<head>
        <spring:url value="static/css/bootstrap.css" var="bootstrap"/>
        <link href="${bootstrap}" rel="stylesheet" />
        <spring:url value="static/css/custom.css" var="custom"/>
        <link href="${custom}" rel="stylesheet" />
</head>
<body>
	<h1>Hola mUndoooo</h1>
	<table border="1">
		<tr>
			<th>Nº</th>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Apellido 2</th>
			<th>DNI</th>
		</tr>

		<c:forEach var="persona" items="${persona}" varStatus="status">
	
			<tr>
				<td>${status.index + 1}</td>
				<td>${persona.nombre}</td>
				<td>${persona.apellido1}</td>
				<td>${persona.apellido2}</td>
				<td>${persona.dni}</td>
				<td><a href="edit?id=${persona.id}">Modificar</a>

					&nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=${persona.id}">Eliminar</a>

				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
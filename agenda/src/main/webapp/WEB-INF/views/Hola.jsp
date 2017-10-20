<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<body>
	<h1>Hola mUndoooo</h1>
	<table border="1">
		<tr>
			<th>Nº</th>
			<th>Usuario</th>
			<th>Email</th>
			<th>Acciones</th>
		</tr>

		<c:forEach var="persona" items="${listp}" varStatus="status">
			<tr>
				<td>${status.index + 1}</td>
				<td>${personas.nombre}</td>
				<td>${personas.apellido}</td>
				<td><a href="edit?id=${personas.id}">Modificar</a>
					&nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=${personas.idpersonas}">Eliminar</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
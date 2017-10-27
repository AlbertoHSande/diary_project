<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="<c:url value="/resources/js/search.js" />"></script>
<link href="<c:url value='/resources/css/bootstrap.css' />" rel="stylesheet"></link>
<link href="<c:url value='/resources/css/custom.css' />" rel="stylesheet"></link>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Editar Persona</title>
</head>
<body>
<c:import url="menu.jsp"></c:import>  
	<div class="container miagenda">
		<form class="well form-horizontal " action="save" method="post">
			<fieldset>

				<!-- Form Name -->
				<legend>Editar contacto</legend>

				<!-- Text input-->

				<div class="form-group">
				<input type="hidden" id="id" name="id" value="${persona.id}">
					<label for="nombre" class="col-md-4 control-label">Nombre</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input type="text"
								class="form-control" id="nombre" name="nombre"
								required="required" value="${persona.nombre}">
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label for="apellido1" class="col-md-4 control-label">Apellido1</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input type="text"
								value="${persona.apellido1}" class="form-control" id="apellido1" name="apellido1"
								required="required">
						</div>
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label for="apellido2" class="col-md-4 control-label">Apellido2</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input type="text"
								value="${persona.apellido2}" class="form-control" id="apellido2" name="apellido2"
								required="required">
						</div>
					</div>
				</div>
				
					<div class="form-group">
					<label for="dni" class="col-md-4 control-label">DNI</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input type="text"
								value="${persona.dni}" class="form-control" id="dni" name="dni"
								required="required">
						</div>
					</div>
				</div>
				


				<div class="form-group">
					<label for="fecha" class="col-md-4 control-label">Fecha</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-calendar"></i></span> <input type="date"
								value="${persona.fechaNacimiento}" class="form-control" id="fecha" name="fechaNacimiento"
								required="required">
						</div>
					</div>
				</div>
				
				<c:forEach var="telefono" items="${persona.telefonoses}" varStatus="count">
				<input type="hidden" name="telefono[${count.index}].idtelefonos" value="${telefono.idtelefonos}">
				<div class="form-group">
					<label for="telefono" class="col-md-4 control-label">Teléfono</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-earphone"></i></span> <input type="text" value="<c:out value="${telefono.telefono}" />" hidden="" class="form-control" id="telefonoses[${count.index}].telefono"
								name="telefono[${count.index}].telefono" required="required">
						</div>
					</div>
				</div>
                </c:forEach>
				
				
				<div class="form-group">
					<label for="idEmpleado" class="col-md-4 control-label">Id Empleado</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-earphone"></i></span> <input type="text" value="${persona.idEmpleado}" hidden="" class="form-control" id="idEmpleado"
								name="idEmpleado" required="required">
						</div>
					</div>
				</div>
				
				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<button type="submit" class="btn btn-warning">
							Guardar modificación <span class="glyphicon glyphicon-send"></span>
						</button>
					</div>
					<a href="/agenda">Volver</a>
				</div>

			</fieldset>
		</form>
	</div>
	

</body>
</html>
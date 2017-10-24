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

	<div class="container">

		<form class="well form-horizontal" action="save" method="post"
			modelAttribute="persona">
			<fieldset>

				<!-- Form Name -->
				<legend>Contact Us Today!</legend>

				<!-- Text input-->

				<div class="form-group">
					<label for="nombre" class="col-md-4 control-label">Nombre</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input type="text"
								class="form-control" id="nombre" name="nombre"
								required="required" value="R2">
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
								value="RR" class="form-control" id="apellido1" name="apellido1"
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
								class="glyphicon glyphicon-envelope"></i></span> <input type="text"
								value="RR" class="form-control" id="apellido2" name="apellido2"
								required="required">
						</div>
					</div>
				</div>
				
					<div class="form-group">
					<label for="dni" class="col-md-4 control-label">dni</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-earphone"></i></span> <input type="text"
								value="12Y" class="form-control" id="dni" name="dni"
								required="required">
						</div>
					</div>
				</div>
				


				<div class="form-group">
					<label for="fecha" class="col-md-4 control-label">fecha</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-earphone"></i></span> <input type="date"
								value="11/10/2011" class="form-control" id="fecha" name="fecha"
								required="required">
						</div>
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="idEmpleado" class="col-md-4 control-label">fecha</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-earphone"></i></span> <input type="text" value="3" class="form-control" id="idEmpleado"
								name="idEmpleado" required="required">
						</div>
					</div>
				</div>
				
				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<button type="submit" class="btn btn-warning">
							enviar <span class="glyphicon glyphicon-send"></span>
						</button>
					</div>
					<a href="/agenda">Volver</a>
				</div>

			</fieldset>
		</form>
	</div>
	

</body>
</html>
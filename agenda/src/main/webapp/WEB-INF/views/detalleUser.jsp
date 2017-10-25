<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
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
<title>Detalle Persona</title>
</head>

<body>
<nav><a href="./"><img href="../static/images/atras.jpg"/></a></nav>
	<main>
	<h1 align="center">Detalle Personal</h1>
	<section class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	<div class="container">
		<h2>Datos Personales</h2>
		<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">Nombre :</div>
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">Apellidos
				:</div>
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">DNI :</div>
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">Fecha de
				Nacimiento :</div>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">${persona.nombre} </div>
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">${persona.apellido1}</div>
				<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">${persona.apellido2}</div>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">${persona.dni}</div>
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">${persona.fechaNacimiento}</div>

		</div>
	</div>
	</section> </main>
</body>
</html>

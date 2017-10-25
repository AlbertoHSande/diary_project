<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<meta charset="UTF-8">
<link href="<c:url value='/resources/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/resources/css/detalles.css' />"
	rel="stylesheet"></link>

<title>Detalle Persona</title>
</head>

<body>

	<main>
	<div class="container">
	<div class="row">
		<div class="col-lg-12 col-sm-12">

            <div class="card hovercard">
                <div class="cardheader">

                </div>
                <div class="avatar">
                    <img alt="" src="http://lorempixel.com/100/100/people/9/">
                </div>
                <div align="center" class="info">
                    <div class="title" align="left">
                    </div>
                    <div class="desc">${persona.nombre} ${persona.apellido1} ${persona.apellido2}</div>
                    <div class="desc">${persona.dni}</div>
                    <div class="desc">${persona.fechaNacimiento}</div>
                </div>
	</main>
</body>
</html>

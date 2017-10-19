<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">


<spring:url value="/resources/css/bootstrap.css" var="estilos1" />
<link href="${estilos1}" rel="stylesheet" />

<spring:url value="/resources/css/custom.css" var="estilos3" />
<link href="${estilos3}" rel="stylesheet" />

<spring:url value="css/bootstrap.css" var="estilos2" />
<link href="${estilos2}" rel="stylesheet" />

<link href="<c:url value='/static/css/custom.css' />" rel="stylesheet"></link>
<title>FORMULARIO DE USUARIOS</title>
</head>
<body>
	
</body>
</html>
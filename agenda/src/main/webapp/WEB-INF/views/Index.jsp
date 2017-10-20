<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<title>PENTIUM Calendar</title>
</head>
<body>
	<h1>PENTIUM Search</h1>
	<FORM method=GET action="http://www.google.es/search">
	<div class="row">
		<div class="col-md-6 col-md-offset-3""><fieldset>
			<input type=hidden name=ie value=UTF-8 /> <input type=hidden name=oe
				value=UTF-8 /> <INPUT TYPE=text id="s" name="q"
				value="Inserte nombre" size="50" /> <font size=1> <input
				type=hidden name=domains value="http://www.uterra.com" /><br>
				<br> <INPUT type=submit id="x" name=btnG VALUE="Buscar" /> <INPUT
				type=submit id="x" name=btnG VALUE="Listar"  class="btn btn-success"/>
			</font>
		</fieldset>
</div>
</div>
	</FORM>
</body>
</html>
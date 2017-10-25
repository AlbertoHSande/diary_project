
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
<title>LISTADO DE Personas</title>
</head>
<body>
	<table border="1">
	<div class="container scroll">

    <div class="row">
        <div class="col-xs-12 col-sm-offset-3 col-sm-6">
            <div class="panel panel-default">
                <div class="panel-heading c-list">
                    <span class="title"><a href="">Contactos</a></span>
                    <ul class="pull-right c-controls">
                        <li><a href="new" data-toggle="tooltip" data-placement="top" title="Add Contact"><i class="glyphicon glyphicon-plus"></i></a></li>
                        <li id="admin"><a  href="#" data-toggle="tooltip" data-placement="top" title="Admin"><i class="fa fa-cog"></i></a></li>
                        <li><a href="#" class="hide-search" data-command="toggle-search" data-toggle="tooltip" data-placement="top" title="Toggle Search"><i class="fa fa-ellipsis-v"></i></a></li>
                    </ul>
                </div>
                <div class="row" style="display: none;">
                    <div class="col-xs-12">
                        <div class="input-group c-search">
                            <input type="text" class="form-control" id="contact-list-search">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search text-muted"></span></button>
                            </span>
                        </div>
                    </div>
                </div>
                <!-- Mostrar datos persona -->
               <c:forEach var="persona" items="${persona}" varStatus="status">
                <ul class="list-group" id="contact-list">
                    <li class="list-group-item">
                        <div class="col-xs-12 col-sm-3">
                            <img src="http://api.randomuser.me/portraits/men/49.jpg" alt="Scott Stevens" class="img-responsive img-circle" />
                        </div>
                        <div class="col-xs-12 col-sm-9">
                           <span class="name"><a href="detalle?id=${persona.id}">${persona.nombre} ${persona.apellido1} ${persona.apellido2}</a></span><br/>
                            <span class="glyphicon glyphicon-map-marker text-muted c-info esconder" data-toggle="tooltip" title="5842 Hillcrest Rd"></span>
                            <span class="visible-xs esconder"> <span class="text-muted esconder">5842 Hillcrest Rd</span><br/></span>
                            <span class="glyphicon glyphicon-earphone text-muted c-info esconder" data-toggle="tooltip" title="(870) 288-4149"></span>
                            <span class="visible-xs esconder"> <span class="text-muted ">(870) 288-4149</span><br/></span>
                            <span class="fa fa-comments text-muted c-info esconder" data-toggle="tooltip" title="scott.stevens@example.com"></span>
                            <span class="visible-xs esconder"> <span class="text-muted esconder">${persona}</span><br/></span>
                            <div class="mostrar margin2r" >
                            <span><a class="btn btn-danger" role="button" href="edit?id=${persona.id}"><i class="fa fa-pencil" aria-hidden="true"></i></a></span>
                            <span><a class="btn btn-warning" role="button" href="delete?id=${persona.id}"><i class="fa fa-times" aria-hidden="true"></i></a></span>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </li>
            	</c:forEach>
                </ul>
            </div>
        </div>
	</div>
    
    <div id="cant-do-all-the-work-for-you" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="mySmallModalLabel">Ooops!!!</h4>
                </div>
                <div class="modal-body">
                    <p>I am being lazy and do not want to program an "Add User" section into this snippet... So it looks like you'll have to do that for yourself.</p><br/>
                    <p><strong>Sorry<br/>
                    ~ Mouse0270</strong></p>
                </div>
            </div>
        </div>
    </div>
    
    <!-- JavaScrip Search Plugin -->
    <script src="//rawgithub.com/stidges/jquery-searchable/master/dist/jquery.searchable-1.0.0.min.js"></script>
    
</div>
<%-- 		<tr>
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
					&nbsp;&nbsp;&nbsp;&nbsp; <a href="detalle?id=${persona.id}">Detalle</a>
				</td>
			</tr>
		</c:forEach> --%>
	</table>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="<c:url value="/resources/js/pagina.js" />"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/estilos.css" />" />
</head>
<body>
	<div id="divNom" class="fuente">
		<label>Nombre</label> <input type="text">
	</div>
	<div id="divTel" class="fuente">
		<label>Telefono</label> <input type="text">
	</div>
	<div id="divDirec" class="fuente">
		<label>Direccion</label> <input type="text">
	</div>

	<div class="enviar">
		<button type="button">Reset</button>
	</div>
	<button type="reset">Send</button>
	<button type="submit">Re-send</button>
</body>
</html>
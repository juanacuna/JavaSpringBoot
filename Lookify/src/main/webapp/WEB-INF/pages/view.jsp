<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style type="text/css">
	body{
	background-color: #232323;
	color: #0ca731;
	text-align: center;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="m-5">
		
		<a class="btn btn-success btn-md m-5" href="/dashboard">Volver al Inicio</a>

		<h3 class="display-3">Titulo: <c:out value="${cancion.titulo}"></c:out></h3>
		<h3 class="display-3">Artista: <c:out value="${cancion.artista}"></c:out></h3>
		<h3 class="display-3">Clasificacion: <c:out value="${cancion.clasificacion}"></c:out></h3>
		
		<form action="/song/${canc.id}" method="post">
	    	<input type="hidden" name="_method" value="delete">
	    	<input class="btn btn-success btn-md m-5" type = "submit" value ="Borrar">
		</form>
</body>
</html>
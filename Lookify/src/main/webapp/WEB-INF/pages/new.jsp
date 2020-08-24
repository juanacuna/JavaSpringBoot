<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<h1 class="display-1 mb-5">Lookify</h1>
		<h1 class="display-3 m-5">Nueva Cancion</h1>
		<form:form action="/song" method="post" modelAttribute="cancion">
			<p>
				<form:label path="titulo">Título</form:label>
				<form:input path="titulo" />
				<form:errors path="titulo" />
			</p>
			<p>
				<form:label path="artista">Artista</form:label>
				<form:input path="artista" />
				<form:errors path="artista" />
			</p>
			<p>
				<form:label path="clasificacion">Clasificación</form:label>
				<form:input type="number" path="clasificacion" />
				<form:errors path="clasificacion" />
			</p>
			<input class="btn btn-success btn-md" type="submit" value="Guardar" />
		</form:form>
</body>
</html>
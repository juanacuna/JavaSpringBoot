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
	<h1 class="display-3 m-5">Artista: <c:out value="${artista}"></c:out></h1>
	<table class="table table-dark">
		<thead class="bg-success">
			<tr>
				<th>Titulo</th>
				<th>Clasificacion</th>
				<th>Accion</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${canciones}" var="canc">
				<tr>
					<td><a href="/songs/<c:out value="${canc.id}"></c:out>"><c:out value="${canc.titulo}"></c:out></a></td>
					<td><c:out value="${canc.clasificacion}"></c:out></td>
					<td><form action="/song/${canc.id}" method="post">
	    					<input type="hidden" name="_method" value="delete">
	    					<input type = "submit" value ="Borrar">
					</form></td>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
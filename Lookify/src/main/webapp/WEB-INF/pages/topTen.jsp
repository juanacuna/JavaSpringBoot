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
	<a class="btn btn-success btn-md" href="/dashboard">Volver al Inicio</a>
	<h1 class="display-1 mb-5">Lookify</h1>
	<h1 class="display-3 m-5">Top TEN</h1>
	<table class="table table-dark">
		<thead class="bg-success">
			<tr>
				<th>Clasificacion</th>
				<th>Titulo</th>
				<th>Artista</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${topTen}" var="canc">
				<tr>
					<td class="text-success"><c:out value="${canc.clasificacion}"></c:out></td>
					<td><a class="text-success" href="/songs/<c:out value="${canc.id}"></c:out>"><c:out value="${canc.titulo}"></c:out></a></td>
					<td class="text-success"><c:out value="${canc.artista}"></c:out></td>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
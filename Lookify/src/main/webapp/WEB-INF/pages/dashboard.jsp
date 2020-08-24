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
	 <div class="row">
		<div class="col">
			<a class="btn btn-success btn-md m-5" href="/song/new">Agregar Nueva Canción</a>
		</div>
		<div class="col-6">
			<form action="/search" method="post">
				<input class="col-2" type="text" placeholder="Ingrese Artista" name="artista">
				<button class="btn btn-success btn-md m-5" type="submit">Buscar Artista</button>
			</form>
		</div>
		<div class="col">
			<form action="/search/topTen" method="post">
				<input type="hidden" name="cancion" value= <c:out value="${canciones}"></c:out> >
		 		<input class="btn btn-success btn-md m-5" type = "submit" value ="Top TEN">
			</form>
		</div>
	</div>
	<h1 class="display-1 mb-5">Lookify</h1>
		
	<table class="table table-dark">
		<thead class="bg-success">
			<tr>
				<th>Nombre</th>
				<th>Rating</th>
				<th>Acción</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${canciones}" var="canc">
				<tr>
					<td><a class="text-success" href="/songs/<c:out value="${canc.id}"></c:out>"><c:out value="${canc.titulo}"></c:out></a></td>
					<td class="text-success"><c:out value="${canc.clasificacion}"></c:out></td>
					<td><form action="/song/${canc.id}" method="post">
	    					<input type="hidden" name="_method" value="delete">
	    					<input class="btn btn-success btn-md" type = "submit" value ="Borrar">
					</form></td>
			</c:forEach>
		</tbody>
	</table>
	
</body>
</html>
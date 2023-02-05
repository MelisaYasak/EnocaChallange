<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="./common.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
body {
	background: #ACD8EE;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" style="color: white">RAMENA</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarScroll"
				aria-controls="navbarScroll" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="material-icons" style="font-size: 36px; color: white">menu</i>
			</button>
			<div class="collapse navbar-collapse" id="navbarScroll">
				<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
					style="-bs-scroll-height: 100px;">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" style="color: white" href="">Go to
							Somewhere</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container mt-3">
		<div class="row">
			<h1 class="text-center mb-3">AKADEMİSYEN LİSTESİ</h1>
			<table class="table mt-4">
				<thead class="table-light">
					<tr>
						<th scope="col">İsmi</th>
						<th scope="col">Soyismi</th>
						<th scope="col">Düzenle</th>
						<th scope="col">Sil</th>
					</tr>
				</thead>
				<tbody class="table-group-divider">
					<c:forEach items="${teacher}" var="str">
						<tr>
							<td>${str.name}</td>
							<td>${str.surname}</td>
							<td><a href="update-teacher/${str.id}"><i class="fas fa-edit"></i></a></td>
							<td><a href="delete-teacher/${str.id}"><i
									class="fas fa-trash-alt text-danger"></i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="container text-center">
				<a href="add-teacher" class="btn"
					style="font-size: 25px; border: 2px solid black">Akademisyen Ekle <i
					class="material-icons" style="font-size: 30px;">add</i></a> <a
					href="${pageContext.request.contextPath}/" class="btn"
					style="font-size: 25px; border: 2px solid black">Geri Dön <i
					class='fas fa-long-arrow-alt-left' style='font-size: 30px'></i></a>
			</div>
		</div>
	</div>
</body>
</html>
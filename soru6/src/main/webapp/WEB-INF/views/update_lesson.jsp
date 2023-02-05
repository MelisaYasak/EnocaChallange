<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@include file="./common.jsp"%>
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
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Ders Bilgilerini Güncelle</h1>
				<form action="${pageContext.request.contextPath}/submit-lesson"
					method="post">
					<div class="mb-3">
						<label class="form-label">Ders Kodu</label> <input type="text"
							name="code" class="form-control" value="${lesson.code}">
					</div>
					<div class="mb-3">
						<label class="form-label">Ders İsmi</label> <input type="text"
							name="name" class="form-control" value="${lesson.name}">
					</div>
					<div class="mb-3">
						<label class="form-label">Dersi Alan Öğrenci Sayısı</label> <input type="text"
							name="numofStu" class="form-control"
							value="${lesson.numofStu}">
					</div>
					<div class="container text-center">
						<button type="submit" class="btn btn-warning">Update</button>
						<a href="${pageContext.request.contextPath}/lesson"
							class="btn btn-outline-danger">Back</a>
					</div>
					<input type="hidden" name="id" value="${lesson.id}">
				</form>
			</div>
		</div>
	</div>
</body>
</html>
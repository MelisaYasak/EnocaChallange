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
				<h5 class="text-center mb-3">Akademisyen Eklemek için Aşağıdaki
					Alanları Doldurun</h5>
				<form action="submit-teacher" method="post">
					<div class="mb-3">
						<label class="form-label">Akademisyen Adı</label> <input type="text"
							name="name" class="form-control">
					</div>
					<div class="mb-3">
						<label class="form-label">Akademisyen Soyismi</label> <input
							type="text" name="surname" class="form-control">
					</div>
					<div class="container text-center">
						<button type="submit"
							href="${pageContext.request.contextPath}/teacher" class="btn"
							style="font-size: 25px; color: green; border: 2px solid green">
							EKLE <i class="material-icons"
								style="font-size: 20px; color: green">check</i>
						</button>
						<a href="${pageContext.request.contextPath}/teacher" class="btn"
							style="font-size: 25px; border: 2px solid red">İPTAL<i
							class="material-icons" style="font-size: 20px; color: red">cancel</i></a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
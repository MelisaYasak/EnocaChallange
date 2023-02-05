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
.container-main {
	padding: 25px;
	margin: 25px;
	border: 2px solid black;
}
.row {
	padding: 25px;
}
.btn {
	background: #F6B9B9
}
.navbar-toggler {
	border-color: white;
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
	<div class="container-main ">
		<div class="row">
			<div class="col-sm-6">
				<h3>KULLANILAN TEKNOLOJİLER</h3>
				<ol>
					<li>HIBERNATE</li>
					<li>SPRING MVC</li>
					<li>Maven</li>
					<li>Tomcat 9.0.55</li>
				</ol>
			</div>
			<div class="col-sm-6">
				<h3>MİMARİ YAPI</h3>
				<ul>
					<li>View</li>
					<li>Controller</li>
					<li>DAO</li>
					<li>Entity</li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container text-center">
		<h4>DERSLERİ LİSTELEMEK İÇİN TIKLAYIN</h4>
		<a href="lesson" class="btn"><i class="material-icons"
			style="font-size: 48px; color: red">arrow_forward</i></a>

	</div>
	<div class="container text-center">
		<h4>AKADEMİSYENLERİ LİSTELEMEK İÇİN TIKLAYIN</h4>
		<a href="teacher" class="btn"><i class="material-icons"
			style="font-size: 48px; color: red">arrow_forward</i></a>

	</div>
</body>
</html>
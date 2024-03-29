<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="beans.Usuario"%>


<!DOCTYPE html>
<html lang="en">

<head>

<!-- Required meta tags -->

<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="icon" href="img/favicon.png" type="image/png" />
<title>Acerca</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/css.css" />
<link rel="stylesheet" href="css/flaticon.css" />
<link rel="stylesheet" href="css/themify-icons.css" />
<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css" />
<link rel="stylesheet" href="vendors/nice-select/css/nice-select.css" />
<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<!-- Font Awesome JS -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"></script>
<!-- main css -->
<link rel="stylesheet" href="css/style.css" />

</head>

<body>
	<!--================ Start Header Menu Area =================-->
	<header class="header_area white-header">
		<div class="main_menu">
			<div class="search_input" id="search_input_box">
				<div class="container">
					<form class="d-flex justify-content-between" method="post"
						action="Controller?op=doBuscar">
						<input name="idPartido" type="text" class="form-control"
							id="search_input" placeholder="Search Here" />
						<button type="submit" class="btn"></button>
						<span class="ti-close" id="close_search" title="Close Search"></span>
					</form>
				</div>
			</div>

			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand" href="Controller?op=doVerificar"> <img
						class="logo-2" src="img/tuvoto.png" alt="" />
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset"
						id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item"><a class="nav-link"
								href="Controller?op=doVerificar">Home</a></li>
							<li class="nav-item"><a class="nav-link"
								href="Controller?op=toDatosUsuario">Mis datos</a></li>
							<li class="nav-item"><a class="nav-link"
								href="Controller?op=Inicio">Vota</a></li>
							<li class="nav-item"><a class="nav-link"
								href="Controller?op=toAcerca">Acerca de</a></li>
							<li class="nav-item"><a class="nav-link"
								href="Controller?op=toContacta">Contacta</a></li>
							<li class="nav-item"><a href="#" class="nav-link search"
								id="search"> <i class="ti-search"></i>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================ End Header Menu Area =================-->

	<!--================Home Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="overlay"></div>
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<div class="banner_content text-center">
							<h2>Mi perfil</h2>
						</div>
					</div>
				</div>
			</div>
		</div>

	</section>
	<!--================End Home Banner Area =================-->

	<!--================ Start SideBar Menu Area =================-->

	<div class="wrapper">
		<!-- Sidebar -->
		<nav id="sidebar">
			<div class="sidebar-header">
				<h3>Mi perfil</h3>
			</div>

			<ul class="list-unstyled components">
				<li><a href="#" onclick="mostrarDatos()">Mi perfil</a></li>
				<li><a href="#" onclick="cambioDatos()">Modificar datos</a></li>
				<!-- Esta opción la implementaremos en una segunda versión, al instroducir la fecha en la tabla de votaciones -->
				<li><a href="#">Histórico</a></li>
				<li><a href="Controller?op=doEliminarCookies">Desconectar</a></li>
				<li><a href="Controller?op=doEliminarUsuario"
					class="bajaUsuario" onclick="confirmarBaja()">Baja</a></li>

			</ul>
		</nav>
		<div id="content">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid"></div>
			</nav>
		</div>
		<c:set var="usuario" value="${requestScope.usuario}" />

		<div id='datos-user-p'>
			<!-- 			mostrar datos de usuario -->

			<span id="datosUsuario">
				</br>
				<p>Bienvenid@ ${usuario.nombre } ${usuario.apellidos }</p>
				<p>${usuario.identificador }:${usuario.idUsuario }</p>
				<p>Provincia: ${usuario.provincia }</p>
				<p>Ciudad: ${usuario.ciudad }</p>
				<p>Email: ${usuario.email }</p>
			</span>

			<!-- modificar datos usuario  -->
			<div class="register_form">
				<span id="modDatosUsuario">
				<center>
					<h2>Modifica tus datos</h2>
				</center>
					<form class="form_area" id="myForm"
						action="Controller?op=doModificarUsuario" method="post"
						onsubmit="return validarForm();">
						<div class="row">
							<div class="col-lg-12 form_group">
								<input autofocus="autofocus" name="nombre" placeholder="Nombre"
									required="" type="text" /> <input id="apellidos"
									name="apellidos" placeholder="Apellidos" required=""
									type="text" /> <input name="provincia" placeholder="Provincia"
									required="" type="text" /> <input name="ciudad"
									placeholder="Ciudad" required="" type="text" /> <input
									id="email" name="email" placeholder="Email"
									pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$"
									required="" type="email" /> <input id="password"
									name="password" placeholder="Contraseña" required=""
									type="password"> <input id="repetirPassword"
									name="repetirPassword" placeholder="Repita la contraseña"
									required="" type="password">
							</div>
							<div class="col-lg-12 text-center">
								<button id="botonCambio" class="primary-btn">Modificar</button>
							</div>

						</div>
					</form>
				</span>
			</div>
		</div>
	</div>

	<!--================ End SideBar Menu Area =================-->

	<!--================ Form Menu Area =================-->



	<!--================ Form Menu Area =================-->

	<img src="img/votacion.jpg" />



	<!--================ Start footer Area  =================-->

	<footer class="footer-area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-2 col-md-6 single-footer-widget">
					<h4>Información</h4>
					<ul>
						<li><a href="Controller?op=toAcerca">Acerca de </a></li>
						<li><a href="Controller?op=toContacta">Contacto</a></li>
					</ul>
				</div>
				<div class="col-lg-2 col-md-6 single-footer-widget">
					<h4>Condiciones</h4>
					<ul>
						<li><a href="Controller?op=toAviso">Aviso legal</a></li>
						<li><a href="Controller?op=toPolitica">Politica de
								privacidad</a></li>
						<li><a href="Controller?op=toCookies">Cookies</a></li>

					</ul>
				</div>

				<div class="col-lg-2 col-md-6 single-footer-widget">
					<h4>Recursos</h4>
					<ul>
						<li><a target="_blank"
							href="https://www.lamoncloa.gob.es/Paginas/index.aspx">La
								Moncloa</a></li>
						<li><a target="_blank"
							href="http://www.casareal.es/ES/Paginas/home.aspx">La Casa
								Real</a></li>
						<li><a target="_blank" href="https://www.europapress.es/">Noticias</a></li>
						<li><a target="_blank"
							href="http://www.aemet.es/es/eltiempo/prediccion/municipios">El
								tiempo</a></li>
					</ul>
				</div>
				<div class="col-lg-4 col-md-6 single-footer-widget">
					<h4>Newsletter</h4>
					<p>Sigue toda la información sobre nuestros políticos</p>
					<div class="form-wrap" id="mc_embed_signup">
						<form target="_blank"
							action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
							method="get" class="form-inline">
							<input class="form-control" name="EMAIL"
								placeholder="Your Email Address" onfocus="this.placeholder = ''"
								onblur="this.placeholder = 'Your Email Address'" required=""
								type="email" />
							<button class="click-btn btn btn-default">
								<span>Suscribete</span>
							</button>
							<div style="position: absolute; left: -5000px;">
								<input name="b_36c4fd991d266f23781ded980_aefe40901a"
									tabindex="-1" value="" type="text" />
							</div>

							<div class="info"></div>
						</form>
					</div>
				</div>
			</div>
			<div class="row footer-bottom d-flex justify-content-between">
				<p class="col-lg-8 col-sm-12 footer-text m-0 text-white">
					<!-- Link back to Colorlib can'
						t be removed. Template is licensedunderCCBY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This page is made <i class="ti-heart"
						aria-hidden="true"></i> by Mónica Merino del Real
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
				<div class="col-lg-4 col-sm-12 footer-social">
					<a target="_blank" href="https://www.facebook.com/"><i
						class="ti-facebook"></i></a> <a target="_blank"
						href="https://twitter.com/"><i class="ti-twitter"></i></a> <a
						target="_blank" href="https://www.linkedin.com/feed/"><i
						class="ti-linkedin"></i></a>
				</div>
			</div>
		</div>
	</footer>
	<!--================ End footer Area  =================-->
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="js/owl-carousel-thumb.min.js"></script>
	 
	<script src="js/eventos_jquery.js"></script>
	<script src="js/eventos.js"></script>
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/theme.js"></script>
	<!-- jQuery CDN - Slim version (=without AJAX) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<!-- Popper.JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</body>

</html>
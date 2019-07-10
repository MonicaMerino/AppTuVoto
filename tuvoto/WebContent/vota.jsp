<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="beans.Voto, java.util.ArrayList, java.io.*, org.jfree.chart.*, org.jfree.chart.plot.*, org.jfree.data.general.*"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="icon" href="img/favicon.png" type="image/png" />
<title>Acerca</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/flaticon.css" />
<link rel="stylesheet" href="css/themify-icons.css" />
<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css" />
<link rel="stylesheet" href="vendors/nice-select/css/nice-select.css" />

<!-- main css -->
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/css.css" />

</head>

<body>
	<!--================ Start Header Menu Area =================-->
	<header class="header_area white-header">
		<div class="main_menu">
			<div class="search_input" id="search_input_box">
				<div class="container">
					<form class="d-flex justify-content-between" method="" action="">
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
								href="Controller?op=doMostrarUsuario">Mis datos</a></li>
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

	<!--================ Start Home Banner Area =================-->
	<section class="home_banner_area">
		<div class="banner_inner">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="banner_content text-center"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Home Banner Area =================-->
	<!--================ Start About Area =================-->
	<center>
		<h1>Resultados</h1>
		<br />
	</center>
	<%
		if (request.getAttribute("tramposo") != null) {
	%>
	<center>
		<p style="color: red">No se puede votar más de una vez. Gracias</p>
	</center>
	<%
		}
	%>
	<section id="form-res-vot" class="about_area section_gap">
		<div class="container">
			<div class="row h_blog_item">
				<div class="col-lg-6">
					<div class="h_blog_img">
						<%
							String rutaGrafico = (String) request.getAttribute("rutaGrafico");
						%>
						<img class="img-fluid" src="<%=rutaGrafico%>" alt="" />


					</div>

				</div>

				<div class="col-lg-6">
					<div class="h_blog_text">
						<div class="h_blog_text_inner left right">



							<center>
								<table id="mivoto"
									class="table table-striped border border-dark">
									<thead class="thead-dark font-weight-light">
										<tr>
											<th class="font-weight-light">Partido político</th>
											<th class="font-weight-light">Votos</th>
										</tr>
									</thead>
									<%
										ArrayList<Voto> resultado = (ArrayList<Voto>) request.getAttribute("resultado");
										for (Voto p : resultado) {
									%>
									<tr>
										<td><%=p.getIdPartido()%></td>
										<td><%=p.getIdVoto()%></td>
									</tr>
									<%
										}
									%>

								</table>
							</center>

							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<center>
			<a class="primary-btn pull-right" href="Controller?op=doVerificar">Volver</a>
		</center>
	</section>

	<!--================ End About Area =================-->
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
						<li><a href="Controller?op=toPolitica">Política de
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
								<span>Suscríbete</span>
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
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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
	 

	<!--gmaps Js-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/theme.js"></script>
	<script type="text/javascript" src="js/Chart.min.js"></script>


	<!-- Chart JS -->

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.js"
		integrity="sha256-JG6hsuMjFnQ2spWq0UiaDRJBaarzhFbUxiUTxQDA9Lk="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js"
		integrity="sha256-XF29CBwU1MWLaGEnsELogU6Y6rcc5nCkhhx89nFMIDQ="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"
		integrity="sha256-J2sc79NPV/osLcIpzL3K8uJyAD7T5gaEFKlLDM18oxY="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"
		integrity="sha256-CfcERD4Ov4+lKbWbYqXD6aFM9M51gN4GUEtDhkWABMo="
		crossorigin="anonymous"></script>

	<!-- jQuery -->

	<script crossorigin="anonymous"
		integrity="sha384-xBuQ/xzmlsLoJpyjoggmTEz8OWUFM0/RC5BsqQBDX2v5cMvDHcMakNTNrHIW2I5f"
		src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

	<script type="text/javascript" src="js/eventos.js"></script>
	</script>
</body>

</html>
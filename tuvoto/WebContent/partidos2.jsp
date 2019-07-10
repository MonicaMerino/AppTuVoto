<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="beans.Partido, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="icon" href="img/favicon.png" type="image/png" />
<title>Partidos</title>
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
	<header class="header_area">
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
					<a class="navbar-brand logo_h" href="Controller?op=doVerificar"><img
						src="img/tuvoto.png" alt="" /></a>
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
								href="Controller?op=toAcceso">Login</a></li>
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
						<div class="banner_content text-center">
							<h2 class="text-uppercase mt-4 mb-5"></h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Home Banner Area =================-->

	<!--================Blog Area =================-->
	<section class="blog_area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="blog_left_sidebar">
						${requestScope.partidopolitico}
						<article class="row blog_item">
							<div class="col-md-3">
								<div class="blog_info text-right">

									<ul class="blog_meta list">
										<li><a href="#">Mark wiens<i class="ti-user"></i></a></li>
										<li><a href="#">12 Dec, 2017<i class="ti-calendar"></i></a></li>
										<li><a href="#">1.2M Views<i class="ti-eye"></i></a></li>
										<li><a href="#">06 Comments<i class="ti-comment"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="col-md-9">
								<div class="blog_post">
									<form
										action="Controller?op=doVota&idPartido=${partidopolitico.getIdPartido()}"
										, method="post">
										<img src="${partidopolitico.getImagen()}" alt="">
										<div class="blog_details">

											<h2>${partidopolitico.getIdPartido()}</h2>


											<p>${partidopolitico.getInformacion()}</p>


											<button type="submit" value="vota" class="blog_btn">VOTA</button>

										</div>
									</form>
								</div>
							</div>
						</article>


						<nav class="blog-pagination justify-content-center d-flex">
							<ul class="pagination">
								<li class="page-item"><a href="#" class="page-link"
									aria-label="Previous"> <span aria-hidden="true"> <i
											class="ti-angle-left"></i>
									</span>
								</a></li>
								<li class="page-item"><a href="partidos.html"
									class="page-link">01</a></li>
								<li class="page-item active"><a href="partidos2.html"
									class="page-link">02</a></li>

								<li class="page-item"><a href="#" class="page-link"
									aria-label="Next"> <span aria-hidden="true"> <i
											class="ti-angle-right"></i>
									</span>
								</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="blog_right_sidebar">
						<aside class="single_sidebar_widget search_widget">
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="Search Posts"> <span
									class="input-group-btn">
									<button class="btn btn-default" type="button">
										<i class="ti-search"></i>
									</button>
								</span>
							</div>
							<!-- /input-group -->
							<div class="br"></div>
						</aside>
						<aside class="single_sidebar_widget author_widget">
							<img class="author_img rounded-circle" src="img/blog/author.png"
								alt="">
							<h4>Jose Alberto</h4>
							<p>Diseñador web</p>
							<div class="social_icon">
								<a href="#"><i class="ti-facebook"></i></a> <a href="#"><i
									class="ti-twitter"></i></a> <a href="#"><i class="ti-github"></i></a>
								<a href="#"><i class="ti-linkedin"></i></a>
							</div>
							<p>Me dedico al diseño web y después de ver esta página, por
								fin puedo decir que algo en el Gobierno funciona. La idea es muy
								buena, pero como otros tantos, creo que nuestros políticos
								necesitan también aires nuevos</p>
							<div class="br"></div>
						</aside>
						<aside class="single_sidebar_widget popular_post_widget">
							<h3 class="widget_title">Popular Posts</h3>
							<div class="media post_item">
								<img src="img/blog/popular-post/post1.jpg" alt="post"
									max-width="100px" max-height="60px">
								<div class="media-body">
									<a target="_blank"
										href="https://elpais.com/tag/fecha/ultimahora/5">
										<h3>Última hora</h3>
									</a>
									<p>Hace 20 minutos</p>
								</div>
							</div>

							<div class="media post_item">
								<img src="img/blog/popular-post/post3.jpg" alt="post"
									max-width="100px" max-height="60px">
								<div class="media-body">
									<a target="_blank"
										href="https://www.abc.es/espana/legislacion/reforma-laboral/">
										<h3>La reforma laboral</h3>
									</a>
									<p>Hace 50 minutos</p>
								</div>
							</div>
							<div class="media post_item">
								<img src="img/blog/popular-post/post4.jpg" alt="post"
									max-width="100px" max-height="60px">
								<div class="media-body">
									<a target="_blank"
										href="https://www.alainet.org/es/articulo/194716">
										<h3>La era tecnológica</h3>
									</a>
									<p>Hace 1 hora</p>
								</div>
							</div>
							<div class="br"></div>
						</aside>

						<aside class="single-sidebar-widget newsletter_widget">
							<h4 class="widget_title">Newsletter</h4>
							<p>Sigue toda la información sobre nuestros políticos</p>
							<div class="form-group d-flex flex-row">
								<div class="input-group">
									<div class="input-group-prepend">
										<div class="input-group-text">
											<i class="ti-email" aria-hidden="true"></i>
										</div>
									</div>
									<input type="text" class="form-control"
										id="inlineFormInputGroup" placeholder="Email"
										onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Enter email'">
								</div>
								<a href="#" class="bbtns">Suscríbete</a>
							</div>

							<div class="br"></div>
						</aside>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================Blog Area =================-->


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
	 
	 
	<script src="js/eventos_jquery.js"></script>
	<!--gmaps Js-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/theme.js"></script>
</body>
</html>
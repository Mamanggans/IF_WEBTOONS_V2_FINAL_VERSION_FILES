<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>IF Webtoons</title>
	<meta charset="UTF-8">
	<meta name="description" content="IF Webtoons">
	<meta name="keywords" content="Webtoons, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="img/iron2.png" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i" rel="stylesheet">

	<!-- Stylesheets -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<link href="css/bublenewbuble.css" rel="stylesheet">
	<link rel="stylesheet" href="css/aftscroll.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="common-css/jquery.classycountdown.css" />
		
	<link href="common-css/02-comming-soon/css/styles.css" rel="stylesheet"/>
	
	<link href="common-css/02-comming-soon/css/responsive.css" rel="stylesheet"/>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section">
		<div class="container">
			<!-- logo -->
			<a class="site-logo" href="index.jsp" style="margin-top: -10px;">
				<img src="img/logo1.png" alt="IF Comic Logo">
			</a>
			<div class="user-panel">
				<a href="..\index.jsp">log out</a>
			</div>
			<!-- responsive -->
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			<!-- site menu -->
			<nav class="main-menu">
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li><a href="#">Comic</a>
                            <ul class="dropdown">
                                <li><a href="pre_comic.jsp">Premium Comic</a></li>
                                <li><a href="comic.jsp">Free Comic</a></li>
                            </ul>
                        </li>
					<li><a href="contact_us.jsp">Contact</a></li>
					<li><a href="review.jsp">Review</a></li>
					<li><a href="about.jsp">About us </a></li>
					<li ><a class="hidden-md"href="..\index.jsp">log out</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Hero section -->
	<section class="hero-section">
		<div class="hero-slider owl-carousel">
			<div class="hs-item set-bg" data-setbg="img/comic/pre/cover.jpg">
				<div class="hs-text">
					<div class="container">
						<h2>How to Make a  <span> Girl </span> Fall in Love  </h2>
						<p>A story between a girl and a man in their high-school life</p>
						<a href="pre_comic.jsp" class="site-btn">Read More</a>
					</div>
				</div>
			</div>
			<div class="hs-item set-bg" data-setbg="img/slider.jpg">
				<div class="hs-text">
					<div class="container">
						<h2>New Release <span>Comics! </span> Soul of Neko</h2>
						<p>This story continues with the transformation of  <br/> Nyaw into a human being and returning an alien who hunts Oto. </p>
						<a href="comic.jsp" class="site-btn">Read More</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero section end -->


	<!-- Latest news section -->
    <section class="counter-section bg-gradient">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="counter-text">
                        <span>Upcoming Comic's</span>
                        <h3>Tatang Galaw</h3>
                    </div>
				</div>
				<div class="col-lg-8">
				<div class="display-table center-text">
					<div class="display-table-cell">
						
						<div id="normal-countdown" data-date="2022/12/01"></div>
						</div>
					</div><!-- display-table-cell -->
				</div>
                        </div>
                    </div>
    </section>


	<!-- Feature section -->
	<section class="feature-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 p-0">
					<div class="feature-item set-bg" data-setbg="img/w.jpg">
						<span class="cata new">comedy</span>
						<div class="fi-content text-white">
							<h5><a href="comic.jsp">Kampung Kelor</h5>
							<p>a village who extraordinary</p>
							<a href="review.jsp" class="fi-comment">3 Comments</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 p-0">
					<div class="feature-item set-bg" data-setbg="img/comic2.jpg">
						<span class="cata strategy">adventure</span>
						<div class="fi-content text-white">
							<h5><a href="comic.jsp">Garudayana</a></h5>
							<p>an adventure of a girl name garudayana. </p>
							<a href="review.jsp" class="fi-comment">3 Comments</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 p-0">
					<div class="feature-item set-bg" data-setbg="img/slider.jpg">
						<span class="cata new">comedy</span>
						<div class="fi-content text-white">
							<h5><a href="comic.jsp">Soul of Neko</a></h5>
							<p>This story continues with the transformation of  <br/> Nyaw into a human being and returning an alien who hunts Oto.</p>
							<a href="review.jsp" class="fi-comment">7 Comments</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 p-0">
					<div class="feature-item set-bg" data-setbg="img/comic3.jpg">
						<span class="cata racing">Romantic</span>
						<div class="fi-content text-white">
							<h5><a href="comic.jsp">Spooky Sweatheart</a></h5>
							<p>Choy is a high schooler with psychic ability. One night, he and his friends decided to play jelangkung, where they met a ghost named Diajeng.</p>
							<a href="review.jsp" class="fi-comment">20 Comments</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Feature section end -->


	<!-- Recent game section end -->


	<!-- Tournaments section -->
    <section class="section home-5-bg" id="home">
    <div id="particles-js"></div>
    <div class="bg-overlay"></div>
    <div class="home-center">
        <div class="home-desc-center">
            <div class="container">
                <div class="justify-content-center row">
                    <div class="col-lg-7">
                        <div class="mt-40 text-center home-5-content">
                            <div class="home-icon mb-4"><i class="mdi mdi-pinwheel mdi-spin text-white h1"></i></div>
                            <h1 class="text-white">Wanna be an Author in IFWEBTOONS ?</h1>
                            <p class="text-white-70 mt-4 f-15 mb-0">click here to see the Terms and Conditions.</p>
                         	<a href="../admin/admin_addcomic_user.jsp">
                         	<div class="mt-5">
                                <input class="btn btn-success" type="button"  value="Get started">
                            </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
	<!-- Tournaments section bg -->


	<!-- Review section -->
	        <section class="review-section spad set-bg" data-setbg="img/comic22.jpg">
		<div class="container">
			<div class="section-title">
				<div class="cata new">new</div>
				<h2>Recent Reviews</h2>
			</div>
	<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/comic/nadiracerah.jpg">
							<div class="score purple">9.3</div>
						</div>
						<div class="review-text">
                                                    <h5 style="color: white">Nadira</h5>
							<p>the commic is a perfect love and horror story </p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/comic/sinopalcerah.jpg">
							<div class="score red">9.5</div>
						</div>
						<div class="review-text">
							<h5>Si Nopal</h5>
							<p>just a funny comic</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/comic/SON.jpg">
							<div class="score red">9.1</div>
						</div>
						<div class="review-text">
							<h5>Soul Of Neko</h5>
							<p>this comic is so funny i can't stop laughing</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="review-item">
						<div class="review-cover set-bg" data-setbg="img/comic/comiccerah.jpg">
							<div class="score green">9.7</div>
						</div>
						<div class="review-text">
							<h5 style="color: white">Garudayana</h5>
							<p>is the best adventure comic</p>
						</div>
					</div>
				</div>
			</div>
		</div>
        </section>
	<!-- Review section end -->


	<!-- Footer top section -->
	<section class="footer-top-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="footer-logo text-white">
			<a class="site-logo" href="index.jsp">
				
			</a><br/>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="footer-widget">
						<h4 class="fw-title">Top Comments</h4>
						<div class="top-comment">
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/1.jpg"></div>
								<div class="tc-content">
                                                                    <p><a href="review.jsp">risiasi</a><span>on Kampung Kelor </span>  such a funny comic with +62 people</p>
									<div class="tc-date">sept 3, 2019</div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/2.jpg"></div>
								<div class="tc-content">
                                                                    <p><a href="review.jsp">M Iqbal</a> <span>on Soul Of Neko</span>  LOL </p>
									<div class="tc-date">June 21, 2019</div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/3.jpg"></div>
								<div class="tc-content">
									<p><a href="#">M Dhani</a> <span>on spooky sweath heart</span>  beutiful romantic stories between hanas and lia</p>
									<div class="tc-date">July 23, 2019</div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/4.jpg"></div>
								<div class="tc-content">
									<p><a href="#">ferdiansyah</a> <span>on soul of neko</span>  such a </p>
									<div class="tc-date">August 11, 2019</div>
								</div>
							</div>
						</div>
					</div>
				</div>
                                            </div>
                </div>
	</section>
	<!-- Footer top section end -->

	
	<!-- Footer section -->
	<footer class="footer-section">
		<div class="container">
			<ul class="footer-menu">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="comic.jsp">comic</a></li>
				<li><a href="contact.jsp">contact</a></li>
				<li><a href="review.jsp">review</a></li>
				<li><a href="about.jsp">about us</a></li>
			</ul>
        <p class="copyright">
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | follow us on <a href="https://instagram.com" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a><a href="https://twitter.com" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a><a href="https://youtube.com" target="_blank"><i class="fa fa-youtube" aria-hidden="true"></i></a>
        </p>
		</div>
	</footer>
	<!-- Footer section end -->


	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script> 
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="js/buble.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.marquee.min.js"></script>
	<script src="js/main.js"></script>
	<script src="common-js/jquery.countdown.min.js"></script>
	
	<script src="common-js/scripts.js"></script>
    </body>
</html>
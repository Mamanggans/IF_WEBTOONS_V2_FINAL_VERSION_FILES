<html>
<head>
	<title>contact us </title>
	<meta charset="UTF-8">
	<meta name="description" content="IF Webtoons">
	<meta name="keywords" content="Webtoons, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="img/iron2.png" rel="shortcut icon"/>

	<link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i" rel="stylesheet">

	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="css/scroll.css"/>
	<link rel="stylesheet" href="css/hover.css"/>


<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-firestore.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-analytics.js"></script>
<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyC7lRYm2owotHi6ZcF9pf51CjDhPcH_zvg",
    authDomain: "ifwebtoons-project.firebaseapp.com",
    databaseURL: "https://ifwebtoons-project.firebaseio.com",
    projectId: "ifwebtoons-project",
    storageBucket: "ifwebtoons-project.appspot.com",
    messagingSenderId: "158158880289",
    appId: "1:158158880289:web:50c47debdbc5efea61ad60",
    measurementId: "G-T3G6XJBY3G"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
</script>

</head>
<body ng-app="validationApp" ng-controller="mainController">
	<header class="header-section">
		<div class="container">
			<!-- logo -->
			<a class="site-logo" href="index.jsp">
				<img src="img/logo1.png" alt="">
			</a>
			<div class="user-panel">
				<a href="login.jsp">login</a>
			</div>
			<!-- responsive -->
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			<!-- site menu -->
			<nav class="main-menu">
				<ul>
					<li><a href="index.jsp">Home</a></li>
                    <li><a href="login.jsp">Premium Comic</a></li>
                    <li><a href="comic.jsp">Free Comic</a></li>
					<li><a href="contact_us.jsp">Contact</a></li>
				<!-- <li><a href="review.jsp">Review</a></li> -->>	
					<li><a href="about.jsp">About us </a></li>
					<li ><a class="hidden-md"href="#">login</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Latest news section -->
	<div class="latest-news-section">
		<div class="ln-title">Featured Comic</div>
		<div class="news-ticker">
			<div class="news-ticker-contant">
				<div class="nt-item"><span class="new">comedy</span>kamvret lyfe SGT risiasi </div>
				<div class="nt-item"><span class="strategy">adventure</span>garudayana by mamang racing </div>
				<div class="nt-item"><span class="racing">romantic</span>spooky sweatheart by ibeng turbo </div>
		</div>
		</div>
	</div>
	<!-- Latest news section end -->
	<section class="page-info-section set-bg" data-setbg="img/comic/she.jpg">
		<div class="pi-content">
			<div class="container">
				<div class="row">
					<div class="col-xl-5 col-lg-6 text-white">
						<h2>Contact us</h2>
						<p>Give us feedback's so we can improve our website ! </p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Page info section -->


	<!-- Page section -->
	<section class="page-section spad contact-page">
		<div class="container">

			<div class="row">
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="comment-title">Contact us</h4>
					<p style="margin-top: -16px;">Fill out the form below to give us a feedback so we can improve our website.</p>
					<div class="row">
						<div class="col-md-9">
							<ul class="contact-info-list" style="margin-top: -70px;">
							</br>
								<li><div class="cf-left">Address</div><div class="cf-right">Jl. Nusa Indah IV Gg. 6, RT.7/RW.4, Malaka Jaya, Kota Jakarta Timur Daerah Khusus Ibukota Jakarta</div></li>
								<li><div class="cf-left">Phone</div><div class="cf-right">+62 851-5618-6820</div></li>
								<li><div class="cf-left">E-mail</div><div class="cf-right">ferdikings03@gmail.com<br/>mandrew_aw@yahoo.com</div></li>
							</ul>
						</div>
					</div>
					<div class="social-links" style="margin-top: -10px;">
						<a  class="blu_hov" href="#"><i class="blu_hov fa fa-pinterest"></i></a>
						<a href="#"><i class="fa fa-facebook"></i></a>
						<a href="#"><i class="fa fa-twitter"></i></a>
						<a href="#"><i class="fa fa-dribbble"></i></a>
						<a href="#"><i class="fa fa-behance"></i></a>
						<a href="#"><i class="fa fa-linkedin"></i></a>
					</div>
				</div>
            <div class="col-lg-8">
					<div class="contact-form-warp">
          <h1 class="h3 mb-4 text-gray-800">Leave a Reply</h1>
          <form class="comment-form">
                <div class="row">
                  <div class="col-md-6">
                    <input type="text" id="name" placeholder="name">
                  </div>
                  <div class="col-md-6">
                    <input type="text" id="email" placeholder="enter an email">
                  </div>
                <div class="col-lg-12"> 
                     <textarea type="text" id="message" placeholder="Message"></textarea>
                </div>
                 <input type="button" value="Send Message" onclick="save_user();" class="site-btn btn-sm" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	
	<section class="footer-top-section">
	<div class="container">
		<div class="row"></div>
		<div class="footer-top-bg">
			<img src="img/footer-top-bg.png" alt="">
		</div>
		<div class="row">
			<div class="col-lg-4">
				<div class="footer-logo text-white">
					<a class="site-logo" href="index.jsp">
						<img src="img/logo1.png" alt="">
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
								<p><a href="review.jsp">akp</a><span>on Kampung Kelor </span>  such a funny comic with +62 people</p>
								<div class="tc-date">sept 3, 2019</div>
							</div>
						</div>
						<div class="tc-item">
							<div class="tc-thumb set-bg" data-setbg="img/authors/2.jpg"></div>
							<div class="tc-content">
								<p><a href="review.jsp">Nisa</a> <span>on Soul Of Neko</span>  LOL </p>
								<div class="tc-date">June 21, 2019</div>
							</div>
						</div>
						<div class="tc-item">
							<div class="tc-thumb set-bg" data-setbg="img/authors/3.jpg"></div>
							<div class="tc-content">
								<p><a href="#">Annisa</a> <span>on spooky sweath heart</span>  beutiful romantic stories between hanas and lia</p>
								<div class="tc-date">July 23, 2019</div>
							</div>
						</div>
						<div class="tc-item">
							<div class="tc-thumb set-bg" data-setbg="img/authors/4.jpg"></div>
							<div class="tc-content">
								<p><a href="#">Annisa kurnia putri</a> <span>on soul of neko</span>  such a </p>
								<div class="tc-date">August 11, 2019</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

	<footer class="footer-section">
		<div class="container">
			<ul class="footer-menu">
					<li><a href="index.jsp">Home</a></li>
                    <li><a href="login.jsp">Premium Comic</a></li>
                    <li><a href="comic.jsp">Free Comic</a></li>
					<li><a href="contact_us.jsp">Contact</a></li>
				<!-- <li><a href="review.jsp">Review</a></li>  -->	
					<li><a href="about.jsp">About us </a></li>
			</ul>
        <p class="copyright">
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | follow us on <a href="https://instagram.com" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a><a href="https://twitter.com" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a><a href="https://youtube.com" target="_blank"><i class="fa fa-youtube" aria-hidden="true"></i></a>
        </p>
		</div>
	</footer>
<!-- 
	<script>
		var validationApp = angular.module('validationApp', []);
		// create angular controller
		validationApp.controller('mainController', function ($scope) {
		// function to submit the form after all validation has occurred
		$scope.submitForm = function (isValid) {
		// check to make sure the form is completely valid
		if (isValid) {
		alert('Thank you ');
		window.location.reload();
		}else
		alert('Please Fill all the fields');
		};
		});
	</script> -->
	<script src="js/angular.js"></script>
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script> -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.marquee.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/angular-validate.js"></script>
	<script>
var databaseRef = firebase.database().ref('amessage/');


function save_user(){
 var name = document.getElementById('name').value;
 var email = document.getElementById('email').value;
 var message = document.getElementById('message').value;

 var uid = firebase.database().ref().child('amessage').push().key;
 
 var data = {
  name: name,
  email: email,
  message: message
 }
 
 var updates = {};
 updates['/amessage/' + uid] = data;
 firebase.database().ref().update(updates);
 
 alert('your massage has been send to administrator !'); 
 reload_page();
}

function reload_page(){
 window.location.reload();
}
</script>
    </body>
</html>
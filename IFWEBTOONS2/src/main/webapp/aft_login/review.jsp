<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE >
<html>
<head>
<title>contact us</title>
<meta charset="UTF-8">
<meta name="description" content="IF Webtoons">
<meta name="keywords" content="Webtoons, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="img/iron2.png" rel="shortcut icon" />

<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i"
	rel="stylesheet">

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/owl.carousel.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/animate.css" />
<link rel="stylesheet" href="../css/blur.css" />
<link rel="stylesheet" href="css/aftscroll.css"/>

<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-app.js"></script>
<script
	src="https://www.gstatic.com/firebasejs/7.15.0/firebase-database.js"></script>
<script
	src="https://www.gstatic.com/firebasejs/7.15.0/firebase-firestore.js"></script>
<script
	src="https://www.gstatic.com/firebasejs/7.15.0/firebase-analytics.js"></script>
<script>
	// Your web app's Firebase configuration
	var firebaseConfig = {
		apiKey : "AIzaSyC7lRYm2owotHi6ZcF9pf51CjDhPcH_zvg",
		authDomain : "ifwebtoons-project.firebaseapp.com",
		databaseURL : "https://ifwebtoons-project.firebaseio.com",
		projectId : "ifwebtoons-project",
		storageBucket : "ifwebtoons-project.appspot.com",
		messagingSenderId : "158158880289",
		appId : "1:158158880289:web:50c47debdbc5efea61ad60",
		measurementId : "G-T3G6XJBY3G"
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
			<a class="site-logo" href="index.jsp"> <img src="img/logo1.png"
				alt="">
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

					<li><a href="pre_comic.jsp">Comic</a>
					<li><a href="contact_us.jsp">Contact</a></li>
					<li><a href="review.jsp">Review</a></li>
					<li><a href="about.jsp">About us </a></li>
					<li><a class="hidden-md" href="..\index.jsp">log out</a></li>
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
				<div class="nt-item">
					<span class="new">comedy</span>kamvret lyfe SGT risiasi
				</div>
				<div class="nt-item">
					<span class="strategy">adventure</span>garudayana by mamang racing
				</div>
				<div class="nt-item">
					<span class="racing">romantic</span>spooky sweatheart by ibeng
					turbo
				</div>
			</div>
		</div>
	</div>
	<!-- Latest news section end -->
	<section class="page-info-section set-bg"
		data-setbg="img/comic/123.jpg">
		<div class="pi-content">
			<div class="container">
				<div class="row">
					<div class="col-xl-5 col-lg-6 text-white">
						<h2>Review</h2>
						<p>Currently is prototype, refresh web browser once a while to
							know the update!</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Page info section -->


	<!-- Page section -->
	<section class="page-section spad contact-page">
		<div class="container">

			<div class="card shadow mb-5">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Chat Live!</h6>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table id="tb_message" class="table table-data2" width="100%"
							cellspacing="0">
							<tr>
								<td><b>Name</b></td>
								<td><b>Topics</b></td>
								<td><b>Message</b></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6 mx-auto">
				<div class="contact-form-warp">
					<h1 class="h3 mb-4 text-gray-800">Type your Review</h1>
					<form class="comment-form mx-5">
						<div class="row">
							<div class="col-md-5">
								<input type="text" id="name" placeholder="Name" required>
							</div>
							<div class="col-md-5">
								<input type="text" id="email" placeholder="Topics" required>
							</div>
							<div class="col-md-10">
								<textarea type="text" id="message" placeholder="Message" required></textarea>
							</div>
						</div>
						<input type="button" value="Send" onclick="save_user();"
							class="btn btn-warning " style="text-align: center;"/>
				</div>
				</form>
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
						<a class="site-logo" href="index.jsp"> <img
							src="img/logo1.png" alt="">
						</a><br />
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="footer-widget">
						<h4 class="fw-title">Top Comments</h4>
						<div class="top-comment">
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/1.jpg"></div>
								<div class="tc-content">
									<p>
										<a href="review.jsp" id="tb_message"></a><span>on Kampung Kelor
										</span> such a funny comic with +62 people
									</p>
									<div class="tc-date">sept 3, 2019</div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/2.jpg"></div>
								<div class="tc-content">
									<p>
										<a href="review.jsp">M Iqbal</a> <span>on Soul Of Neko</span>
										LOL
									</p>
									<div class="tc-date">June 21, 2019</div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/3.jpg"></div>
								<div class="tc-content">
									<p>
										<a href="#">M Dhani</a> <span>on spooky sweath heart</span>
										beutiful romantic stories between hanas and lia
									</p>
									<div class="tc-date">July 23, 2019</div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/4.jpg"></div>
								<div class="tc-content">
									<p>
										<a href="#">ferdiansyah</a> <span>on soul of neko</span> such
										a
									</p>
									<div class="tc-date">August 11, 2019</div>
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
				<li><a href="comic.jsp">comic</a></li>
				<li><a href="contact.jsp">contact</a></li>
				<li><a href="review.jsp">review</a></li>
				<li><a href="about.jsp">about us</a></li>
			</ul>
			<p class="copyright">
				Copyright &copy;
				<script>
					document.write(new Date().getFullYear());
				</script>
				All rights reserved | follow us on <a href="https://instagram.com"
					target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a><a
					href="https://twitter.com" target="_blank"><i
					class="fa fa-twitter" aria-hidden="true"></i></a><a
					href="https://youtube.com" target="_blank"><i
					class="fa fa-youtube" aria-hidden="true"></i></a>
			</p>
		</div>
	</footer>

	<script src="js/angular.js"></script>
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script> -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.marquee.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/angular-validate.js"></script>
	<script>
		var databaseRef = firebase.database().ref('review/');

		function save_user() {
			var name = document.getElementById('name').value;
			var email = document.getElementById('email').value;
			var message = document.getElementById('message').value;
			
			 if (name === '') {
			        alert('Name is empty.');
			        return false;
			    }
			    else if (email === '') {
			        alert('Topics is empty.');
			        return false;
			    }
			    else if (message === '') {
			        alert('Message is empty.');
			        return false;
			    }
			    else {
			    	var uid = firebase.database().ref().child('review').push().key;

					var data = {
						name : name,
						email : email,
						message : message
					}

					var updates = {};
					updates['/review/' + uid] = data;
					firebase.database().ref().update(updates);

					alert('your massage has been send to administrator !');
					reload_page();
			    }
			
		}

		function reload_page() {
			window.location.reload();
		}

		var tbMataKuliah = document.getElementById('tb_message');
		var databaseRef = firebase.database().ref('review/');
		var rowIndex = 1;

		databaseRef.once('value', function(snapshot) {
			snapshot
					.forEach(function(childSnapshot) {
						var childKey = childSnapshot.key;
						var childData = childSnapshot.val();

						var row = tbMataKuliah.insertRow(rowIndex);
						var cellname = row.insertCell(0);
						var cellemail = row.insertCell(1);
						var cellmessage = row.insertCell(2);
						cellname.appendChild(document
								.createTextNode(childData.name));
						cellemail.appendChild(document
								.createTextNode(childData.email));
						cellmessage.appendChild(document
								.createTextNode(childData.message));
						rowIndex = rowIndex + 1;
					});
			var table = document.getElementById("tb_message");

			var rows = table.getElementsByTagName("tr");

			for (i = 0; i < rows.length; i++) {

				var currentRow = table.rows[i];

				var createClickHandler = function(row) {

					return function() {

						var cell1 = row.getElementsByTagName("td")[0];

						var cell2 = row.getElementsByTagName("td")[1];

						var cell3 = row.getElementsByTagName("td")[2];

						var name = cell1.innerHTML;

						var email = cell2.innerHTML;

						var message = cell3.innerHTML;

						document.getElementById('name').value = name;

						document.getElementById('email').value = email;

						document.getElementById('message').value = message;

					};

				};

			}
		});
	</script>
</body>
</html>
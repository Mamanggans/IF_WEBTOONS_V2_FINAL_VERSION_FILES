<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/scroll.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="common-css/jquery.classycountdown.css" />
		
	<link href="common-css/02-comming-soon/css/styles.css" rel="stylesheet"/>
	
	<link href="common-css/02-comming-soon/css/responsive.css" rel="stylesheet"/>
	    <link rel="stylesheet" href="css/contact_us.css" type="text/css">
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
				<a href="login.jsp">Login</a>
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
				<!-- <li><a href="review.jsp">Review</a></li> -->	
					<li><a href="about.jsp">About us </a></li>
					<li ><a class="hidden-md"href="login.jsp">Login</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Hero section -->
	<section class="hero-section">
		<div class="hero-slider owl-carousel">
			<div class="hs-item set-bg" data-setbg="img/w.jpg">
				<div class="hs-text">
					<div class="container">
						<h2>Kampung Kelor <span> comics</span> Out There </h2>
						<p>kampung yang tidak biasa</p>
						<a href="comic.jsp" class="site-btn">Read More</a>
					</div>
				</div>
			</div>
			<div class="hs-item set-bg" data-setbg="img/slider.jpg">
				<div class="hs-text">
					<div class="container">
						<h2>Soul of Neko <span>Comics</span> Out There</h2>
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
                        <span>Coming Soon</span>
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
							<h5><a href="comic.jsp">garudayana</a></h5>
							<p>an adventure of a girl name garudayana. </p>
							<a href="review.jsp" class="fi-comment">3 Comments</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 p-0">
					<div class="feature-item set-bg" data-setbg="img/slider.jpg">
						<span class="cata new">comedy</span>
						<div class="fi-content text-white">
							<h5><a href="comic.jsp">soul of neko</a></h5>
							<p>This story continues with the transformation of  <br/> Nyaw into a human being and returning an alien who hunts Oto.</p>
							<a href="review.jsp" class="fi-comment">7 Comments</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 p-0">
					<div class="feature-item set-bg" data-setbg="img/comic3.jpg">
						<span class="cata racing">Romantic</span>
						<div class="fi-content text-white">
							<h5><a href="comic.jsp">spooky sweatheart</a></h5>
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
	<section class="tournaments-section spad">
		<div class="container">
			<div class="tournament-title">Comic connect</div>
			<div class="row">
				<div class="col-md-6">
					<div class="tournament-item mb-4 mb-lg-0">
						<div class="ti-notic">DKI Jakarta</div>
						<div class="ti-content">
							<div class="ti-thumb set-bg" data-setbg="img/place/monas.jpg"></div>
							<div class="ti-text">
								<ul>
									<li><span> Beggins:</span> desember 20, 2019</li>
									<li><span>Ends:</span> desember 24, 2018</li>
									<li><span>at :</span> jakarta confention center</li>
									<li><span>organizing committee :</span> ciayo comics</li></ul>
                                
<p><span>speakers :</span> stanley . tatang galaw, mamang racing and manymore</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="tournament-item">
						<div class="ti-notic">Padang</div>
						<div class="ti-content">
							<div class="ti-thumb set-bg" data-setbg="img/place/padnag.jpg"></div>
							<div class="ti-text">
					<ul>
									<li><span> Beggins:</span> january 20, 2020</li>
									<li><span>Ends:</span> january 24, 2020</li>
									<li><span>at :</span> Padang confention center</li>
									<li><span>organizing committee :</span> IF webtoons</li>
								</ul>
								<p><span>speakers :</span> malcolm wheeler nicholson, kimi hime and manymore</p>
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
        </br></br>
      <section class="team-member-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Comic of the month</h2>
                        <p>These are our best comicus and comic this month</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
        
       <section class="schedule-table-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="schedule-table-tab">
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="schedule-table-content">
                                    <table id="tb_comicus">
                                        <thead>
                                            <tr>
                                                <th><strong>NO</strong>
                                                    <span>So..who's at the top rank?</span></th>
                                                <th>
                                                    <strong>Comicus name</strong>
                                                    <span>Our Hero of the month!</span>
                                                </th>
                                                <th>
                                                    <strong>Comic</strong>
                                                    <span>The holy creation of a hero!</span>
                                                </th>
                                                <th>
                                                    <strong>Email</strong>
                                                    <span>Psst.. this is our secret use it wisely!</span>
                                                </th>
                                            </tr>
                                        </thead>
                                       		 <tbody>
                                            	<tr>
                                               	 <td class="event-time">-</td>
                                               		 <td class="break hover-bg">
                                                   		 <h5>-</h5>
                                               	 </td>
                                                	<td class="break hover-bg">
                                                    	<h5>-</h5>
                                                	</td>
                                                	<td class="break hover-bg">
                                                   		 <h5>-</h5>
                                                	</td>
                                            	</tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
            </div>
        </div>
    </section>
	<!-- Review section end -->


	<!-- Footer top section -->
	<section class="footer-top-section">
		<div class="container">
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
                                                                    <p><a href="review.jsp">Ferdiansyah </a> <span>on Kampung Kelor </span>  such a funny comic with +62 people</p>
									<div class="tc-date">sept 3, 2019</div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/2.jpg"></div>
								<div class="tc-content">
                                                                    <p><a href="review.jsp">Andrew</a> <span>on Soul Of Neko</span>  LOL </p>
									<div class="tc-date">June 21, 2019</div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/3.jpg"></div>
								<div class="tc-content">
									<p><a href="#">MIBL</a> <span>on spooky sweath heart</span>  beutiful romantic stories between hanas and lia</p>
									<div class="tc-date">July 23, 2019</div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/4.jpg"></div>
								<div class="tc-content">
									<p><a href="#">Allison Young</a> <span>on soul of neko</span>  such a </p>
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
                    <li><a href="login.jsp">Premium Comic</a></li>
                    <li><a href="comic.jsp">Free Comic</a></li>
					<li><a href="contact_us.jsp">Contact</a></li>
				<!-- <li><a href="review.jsp">Review</a></li>  -->	
					<li><a href="about.jsp">About Us </a></li>
			</ul>
        <p class="copyright">
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | follow us on <a href="https://instagram.com" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a><a href="https://twitter.com" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a><a href="https://youtube.com" target="_blank"><i class="fa fa-youtube" aria-hidden="true"></i></a>
        </p>
		</div>
	</footer>
	<!-- Footer section end -->


	<!--====== Javascripts & Jquery ======-->
	    <script src="js/jquery-3.2.1.min.js"></script>
 <script>
		var tbWork = document.getElementById('tb_comicus');
		var databaseRef = firebase.database().ref('comicus/');
		var rowIndex = 1;
		databaseRef.once('value', function(snapshot) {
			snapshot.forEach(function(childSnapshot) {
			var childKey = childSnapshot.key;
			var childData = childSnapshot.val();
			var row = tbWork.insertRow(rowIndex);
			var cellnumber = row.insertCell(0);
			var cellcom_name = row.insertCell(1);
			var cellcomic = row.insertCell(2);
			var cellcom_email = row.insertCell(3);
			
			cellnumber.appendChild(document.createTextNode(childData.number));
			cellcom_name.appendChild(document.createTextNode(childData.com_name));
			cellcomic.appendChild(document.createTextNode(childData.comic));
			cellcom_email.appendChild(document.createTextNode(childData.com_email));
			rowIndex = rowIndex + 1;
			});
			
			var table = document.getElementById("tb_comicus");
			var rows = table.getElementsByTagName("tr");
			for (i = 0; i < rows.length; i++) {
			var currentRow = table.rows[i];
			var createClickHandler = function(row) {
			return function() {
			var cell1 = row.getElementsByTagName("td")[0];
			var cell2 = row.getElementsByTagName("td")[1];
			var cell3 = row.getElementsByTagName("td")[2];
			var cell4 = row.getElementsByTagName("td")[3];
			var number = cell1.innerHTML;
			var com_name = cell2.innerHTML;
			var comic = cell3.innerHTML;
			var com_email = cell4.innerHTML;
			document.getElementById('number').value = number;
			document.getElementById('com_name').value = com_name;
			document.getElementById('comic').value = comic;
			document.getElementById('com_email').value = com_email;
			};
		};
		currentRow.onclick = createClickHandler(currentRow);
		}
		});
		
	</script>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.marquee.min.js"></script>
	<script src="js/main.js"></script>
	<script src="common-js/jquery.countdown.min.js"></script>
	
	<script src="common-js/scripts.js"></script>
    </body>
</html>
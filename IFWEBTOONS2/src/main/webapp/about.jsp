<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Manup Template">
    <meta name="keywords" content="Manup, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>about US</title>
    <link href="img/iron2.png" rel="shortcut icon"/>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap" rel="stylesheet">


    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/contact_us.css" type="text/css">
    <link rel="stylesheet" href="css/scroll.css"/>
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

<body>



	<header class="header-section">
		<div class="container">

			<a class="site-logo" href="index.jsp">
				<img src="img/logo1.png" alt="">
			</a>
			<div class="user-panel">
				<a href="login.jsp"> login</a>
			</div>
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>

			<nav class="main-menu">
				<ul>
					<li><a href="index.jsp">Home</a></li>
                    <li><a href="login.jsp">Premium Comic</a></li>
                    <li><a href="comic.jsp">Free Comic</a></li>
					<li><a href="contact_us.jsp">Contact</a></li>
				<!-- <li><a href="review.jsp">Review</a></li>  -->	
					<li><a href="about_us.jsp">About us </a></li>
					<li ><a class="hidden-md"href="login.jsp"> login</a></li>
				</ul>
			</nav>
		</div>
	</header>
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

    <section class="page-info-section set-bg" data-setbg="img/comic/blueI.jpg">
		<div class="pi-content">
			<div class="container">
				<div class="row">
					<div class="col-xl-5 col-lg-6 text-white">
						<h2>About Us</h2>
						<p>This page is contains about IF Webtoons and The Creators </p>
					</div>
				</div>
			</div>
		</div>
	</section>
    <section class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <h2>About Us</h2>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="about-section spad" style="margin-top: -50px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Something About Us</h2>
                        <p class="f-para">IF Webtoon is a webcomic application and foundation thay aims to give users quality webcomics from various authors and artists, while also providing a source of income for said authors or artists. We give users a bunch of comics to read that can be accessed with ease from a touch (or a click!).</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="about-pic">
                        <img src="img/dearest.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="about-text">
                        <h3>IF Webtoons in 2022</h3>
                        <p>IF Webtoons strive to provide authors and artists alike some support for their works, and serves as a platform for users to interact with and support the authors works. With the method of premium and free users, it is supposedly gives all parties that that uses this platform to gain profit as well as a place to entertain oneself in free time. </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="team-member-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Comicus of the month</h2>
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

    <section class="story-section spad" style="margin-top: -30px;">

                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Our Story</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="story-left">
                        <div class="story-item">
                            <h2>2010</h2>
                            <div class="si-text">
                                <h4>IF Webtoons offline store</h4>
                                <p>IF Webtoons offline store provides merchandises, art, and physical comics from various artists for users to buy.</p>
                            </div>
                        </div>
                        <div class="story-item">
                            <h2>2016</h2>
                            <div class="si-text">
                                <h4>IF Webtoons planning about open an webtoons</h4>
                                <p>IF Webtoons first plan about making a webtoon due to various artists that needs more recognition and a an income for their living. for that matter, IF Webtoon created this platform for authors to gain profit from making what they love or what they are passionate about. also, it gives users a place to read many comics from various authors as well, it's a win-win situation!</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="story-right">
                        <div class="story-item">
                            <h2>2021</h2>
                            <div class="si-text">
                                <h4>IF Webtoons and teams start to make a web comic</h4>
                                <p>Our teams gather various information and researches on how to support the artists while providing access to comics for our free users. We started by making two types of comic users, one being free and one being "premium". The only difference between the two is that premium users can read comics unlimited while free users needs to wait or watch ads to read comics.</p>
                            </div>
                        </div>
                        <div class="story-item">
                            <h2>2022</h2>
                            <div class="si-text">
                                <h4>IF Webtoons launch as an web comic</h4>
                                <p>After we settle on the methods and ways to launch this project into a full-fledged web-comic site that provides users with various comics. We can finally make the site go online with the help of supporters and sponsors.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Story Section End -->

    <!-- Pricing Section Begin -->
        <!-- Newslatter Section End -->

    <!-- Contact Section Begin -->
    <section class="contact-section spad" style="margin-top: -130px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-title">
                        <h2>Location</h2>
                        <p>Our office </p>
                    </div>
                    <div class="cs-text">
                        <div class="ct-address">
                            <span>Address:</span>
                            <p>Kav.Cipayung, blok. M, no. 4, Kota Jakarta Timur<br/>Daerah Khusus Ibukota Jakarta</p>
                        </div>
                        <ul>
                            <li>
                                <span>Phone:</span>
                                021 3674938<br>
                                021 7768902<br>
                            </li>
                            <li>
                                <span>Email:</span>
                                ferdikings03@gmail.com<br>
                                mandrew_aw@yahoo.com
                            </li>
                        </ul>
                        <div class="ct-links">
                            <span>Website:</span>
                            <p>www.ifwebtoons.com</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="cs-map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.3394430582516!2d106.93238721423077!3d-6.218890895498174!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e698ca2115130f1%3A0x15751f515c80fd48!2sJl.%20Nusa%20Indah%20IV%20Gg.%206%2C%20RW.4%2C%20Malaka%20Jaya%2C%20Kec.%20Duren%20Sawit%2C%20Kota%20Jakarta%20Timur%2C%20Daerah%20Khusus%20Ibukota%20Jakarta%2013460!5e0!3m2!1sid!2sid!4v1587569620114!5m2!1sid!2sid" height="400" style="border:0;" allowfullscreen=""></iframe>

                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

    <!-- Footer Section Begin -->
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
									<p><a href="#">annisa kurnia</a> <span>on spooky sweath heart</span>  beutiful romantic stories between hanas and lia</p>
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
                    <li><a href="login.jsp">Pre-Comic</a></li>
                    <li><a href="comic.jsp">Free-Comic</a></li>
					<li><a href="contact_us.jsp">Contact</a></li>
				<!-- <li><a href="review.jsp">Review</a></li>  -->	
					<li><a href="about.jsp">About us </a></li>
					
			</ul>
        <p class="copyright">
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | follow us on <a href="https://instagram.com" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a><a href="https://twitter.com" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a><a href="https://youtube.com" target="_blank"><i class="fa fa-youtube" aria-hidden="true"></i></a>
        </p>
		</div>
	</footer>
</body>
                                            <!-- <tr>
                                                <td class="event-time">1</td>
                                                <td class="break hover-bg">
                                                    <h5>sapa kek</h5>
                                                </td>
                                                <td class="break hover-bg">
                                                    <h5>gabut</h5>
                                                </td>
                                                <td class="break hover-bg">
                                                    <h5>bebas</h5>
                                                </td>
                                                <td class="break hover-bg">
                                                    <h5>au</h5>
                                                </td>
                                            </tr> -->
 
        
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
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.marquee.min.js"></script>
    <script src="js/main.js"></script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
		<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<%
int id= Integer.parseInt(request.getParameter("id"));
Connection con = null;
int fav=0;
ResultSet rs = null;
String connectionURL = "jdbc:mysql://localhost:3306/descfilm"; 
Connection connection = null; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
connection = DriverManager.getConnection(connectionURL, "root", "");
	Statement stmt=connection.createStatement();  
	Statement st=connection.createStatement();
	ResultSet favcheck=stmt.executeQuery("SELECT COUNT(*) FROM `favourite` WHERE `movie_id` ="+id +" AND `user_id` ="+ session.getAttribute("idu"));
	favcheck.next();
	fav=favcheck.getInt(1);
	ResultSet likeset=null;
rs = stmt.executeQuery("select * from mytable where id="+id);
rs.next();
%>


<!DOCTYPE html>
<html lang="en">
<head>
	<title id="title"><%out.println(rs.getString(2));%> || IF Webtoons </title>
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
	<link rel="stylesheet" href="css/main_deskripsi_comic.css">
    <link rel="stylesheet" href="css/responsive_deskripsi_comic.css">


<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">


</head>
<body ng-app="validationApp" ng-controller="mainController">
	<header class="header-section">
		<div class="container">
			<!-- logo -->
			<a class="site-logo" href="index.jsp">
				<img src="img/logo1.png" alt="">
			</a>
			<div class="user-panel">
				<a class="hidden-md"href="../index.jsp">log-out</a>
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
                        </li>
					<li><a href="contact_us.jsp">Contact</a></li>
				<!-- <li><a href="review.jsp">Review</a></li> -->>	
					<li><a href="about.jsp">About us </a></li>
					<li ><a class="hidden-md"href="../index.jsp">log-out</a></li>
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
						<h2><%out.println(rs.getString(2));%></h2>
						<p>Enjoy your chosen comic anytime, anytime in any device</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Page info section -->
 <h2 class="judul" id="profile" ><%out.println(rs.getString(2));%></h2>
    <main>
    <div id="content">
      
      <article id="about" class="card">
         <h2 class="judul-sub"style="">Description About <%out.println(rs.getString(2));%></h2>
         <img src="getImageDetails.jsp?your_id=<%out.println(rs.getInt(1));%>" onerror="this.onerror=null; this.src='img/cover.jpg'" class="abt-img" alt="sejarah"></img>
         <div class="par-bot" id="line1"><p><%out.println(rs.getString(14));%></p></div>
         <div class="par-bot par-ent" id="line2"><p><%out.println(rs.getString(15));%></p></div>
      </article>

  </div>
     <aside>
      <article class="profile card">
         <section>
          <h2 class="sub-pro"><%out.println(rs.getString(2));%></h2>
          <div class="nama-kel">

          
          <div class="par-pro"><p>Genre &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</p>
          <p>&nbsp; <%out.println(rs.getString(4));%></p></div>
          <div class="par-pro"><p>Language  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</p>
          <p>&nbsp; <%out.println(rs.getString(5));%></p></div>
          <div class="par-pro"><p>Chapters  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</p>
          <p>&nbsp;  <%out.println(rs.getString(6));%></p></div>
          <div class="par-pro"><p>Creator &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</p>
          <p>&nbsp; <%out.println(rs.getString(7));%> </p></div>
          <div class="par-pro"><p>Editor &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</p>
          <p>&nbsp; <%out.println(rs.getString(8));%></p></div>
          <div class="par-pro"><p>Distributor &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</p>
          <p>&nbsp; <%out.println(rs.getString(9));%></p></div>
          <div class="par-pro"><p>Year &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</p>
          <p>&nbsp; <%out.println(rs.getString(10));%></p></div>
          <div class="par-pro"><p>Comic Rated &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</p>
          <p>&nbsp; <%out.println(rs.getString(11));%></p></div>
          <div class="par-pro"><p>Main Character &nbsp;&nbsp;:</p>
          <p>&nbsp; <%out.println(rs.getString(12));%></p></div>
          <a href="contact_us.jsp" class="site-profile">Report About this Comic</a>
        </div>
        </section>
      </article>
     </aside>      
    </main>
    <div class="lesson-wrapper">
      <div class="container_comic">
        <div class="heading">
           <h2 class="judul_comic">Chapters on <%out.println(rs.getString(2));%><h2>
           <p class="tengah-txt"><%out.println(rs.getString(13));%></p>
        </div>
        <div class="container-chapters-comic">
          <a class="box-chapter" href="<%out.println(rs.getString(18));%>">Chapter 1 about <%out.println(rs.getString(2));%></a>
          <a class="box-chapter" href="<%out.println(rs.getString(19));%>">Chapter 2 about <%out.println(rs.getString(2));%></a>

       </div>  
      </div>
    </div>


	<!-- Page section -->
	

	<footer class="footer-section">
		<div class="container">
			<ul class="footer-menu">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="comic.jsp">Comic</a></li>
				<li><a href="contact.jsp">Contact</a></li>
				<li><a href="review.jsp">Review</a></li>
				<li><a href="about.jsp">About Us</a></li>
			</ul>
        <p class="copyright">
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | follow us on <a href="https://instagram.com" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a><a href="https://twitter.com" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a><a href="https://youtube.com" target="_blank"><i class="fa fa-youtube" aria-hidden="true"></i></a>
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
	<jsp:include page="scripts.jsp"></jsp:include>
	<script src="js/slideupdown.js"></script>
	<script src="js/detail.js"></script>
	<script src="js/prefent.js"></script>
    </body>
</html>
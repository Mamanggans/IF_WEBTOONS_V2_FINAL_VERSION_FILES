<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<% String connectionURL = "jdbc:mysql://localhost:3306/descfilm"; 
Connection connection = null; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
connection = DriverManager.getConnection(connectionURL, "root", "");
	Statement stmt=connection.createStatement();
	Statement st=connection.createStatement();
	Integer comic_id=Integer.parseInt(request.getParameter("comic_id"));
	Integer cn=Integer.parseInt(request.getParameter("cn"));
	ResultSet rs=st.executeQuery("SELECT * FROM comic WHERE comic_id='"+comic_id+ "' AND chapter_num='"+cn+"'");;
	ResultSet set= stmt.executeQuery("SELECT * FROM comic WHERE comic_id='"+comic_id+ "' AND chapter_num='"+cn+"'");
	rs.next();
%>
<!DOCTYPE html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><%= rs.getString(3)%> : IF Webtoons </title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
    <link rel="stylesheet" href="css/main-comic.css">
	<link href="img/iron2.png" rel="shortcut icon"/>
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i" rel="stylesheet">
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="css/akeren.css"/>
</head>
<body>

	<!-- Header section -->
	<header class="header-section">
		<div class="container">
			<!-- logo -->
			<a class="site-logo" href="index.jsp">
				<img src="img/logo1.png" alt="">
			</a>
			<div class="user-panel">
				<a href="login.jsp">admin login</a>
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
                                <li><a href="login.jsp">Premium comic</a></li>
                                <li><a href="comic.jsp">Free comic</a></li>
                            </ul>
                        </li>
					<li><a href="contact_us.jsp">Contact</a></li>
				<!-- <li><a href="review.jsp">Review</a></li> -->
					<li><a href="about.jsp">About us </a></li>
					<li ><a class="hidden-md"href="#">admin login</a></li>
				</ul>
			</nav>
		</div>
    </header>
    <div class="latest-news-section">
		<div class="ln-title">featured Comics</div>
		<div class="news-ticker">
			<div class="news-ticker-contant">
				<div class="nt-item"><span class="new">comedy</span>kamvret lyfe SGT risiasi </div>
				<div class="nt-item"><span class="strategy">adventure</span>garudayana by mamang racing </div>
				<div class="nt-item"><span class="racing">romantic</span>spooky sweatheart by ibeng turbo </div>
			</div>
			</div>
		</div>
	</div>

    <h2 class="text-center" style="margin-top: 30px;"><%= rs.getString(3)%></h2> <!-- comic title  -->
        <p class="page-description text-center ">by <%= rs.getString(4)%></p> <!-- comic judul  -->
        <div class="tz-gallery" >
            
                <div class="col-md-6">
                    <h3 class="community-top-title"><%= rs.getString(5)%> Chapter : <%= rs.getString(6)%>  </h3>
                </div>


	<div class="row">
	<% while (set.next()){%>
            <div class="col-sm-7 col-sm-5 center">
                <a class="lightbox" href="getimg.jsp?your_id=<%out.println(set.getInt(1));%>" onerror="this.onerror=null; this.src='img/cover.jpg'">
                    <img src="getimg.jsp?your_id=<%out.println(set.getInt(1));%>" onerror="this.onerror=null; this.src='img/cover.jpg'" alt="<%= rs.getString(1)%>">
                </a>
            </div>
        <%}%>
    </div>

    
</div>


    <%
set= stmt.executeQuery("SELECT COUNT(id) FROM comic WHERE comic_id='"+comic_id+ "' AND chapter_num='"+(cn+1)+"'");
set.next();
if (set.getInt(1)!=0){
%>
    <a class="site-profile" style="margin-top: -7px;" style="background-color: #FFB320" href="testchap1.jsp?comic_id=<%=comic_id+0%>&cn=<%=cn+1%>">Next chapter</a>
    <%} 
if (cn!=1){
%></br><a class="site-profile" style="margin-top: -7px;" href="testchap1.jsp?comic_id=<%=comic_id+0%>&cn=<%=cn-1%>"> Previous chapter</a>
<%}
%>
</section>
<footer class="footer-section" style="margin-top: 50px;">
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
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.marquee.min.js"></script>
<script src="js/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
<script>
    baguetteBox.run('.tz-gallery');
</script>
</body>
</html>
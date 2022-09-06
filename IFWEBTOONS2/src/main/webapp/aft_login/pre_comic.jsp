 <%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
	
	<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html lang="en">
	<%
String connectionURL = "jdbc:mysql://localhost:3306/descfilm"; 
Connection connection = null; 
Class.forName("com.mysql.jdbc.Driver"); 
connection = DriverManager.getConnection(connectionURL, "root", "");
	Statement stmt=connection.createStatement();  
	ResultSet rs=null;
	String a=null;
	ArrayList<String> aray = new ArrayList<String>();
	ResultSet set= stmt.executeQuery("SELECT DISTINCT `genre` FROM `mytable` ORDER BY genre ASC");
	while(set.next()){	
		aray.add(set.getString(1));
	}
%>
<head>
	<title>Comic | IF Webtoons</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/comic.css" type="text/css"/>
	<link href="css/normalize.css" rel="stylesheet" type="text/css">
    <link href="css/xopixel.css" rel="stylesheet" type="text/css">
	<link href="img/iron2.png" rel="shortcut icon"/>
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/animate.css"/>
    <link rel="stylesheet" href="../css/blur.css"/>
    <link rel="stylesheet" href="css/aftscroll.css"/>
  



</head> 
<header class="header-section">
    <div class="container">
        <!-- logo -->
			<a class="site-logo" href="index.jsp" style="margin-top: -10px;">
				<img src="img/logo1.png" alt="IF Comic Logo">
			</a>
        <div class="user-panel">
            <a href="../index.jsp">log out</a>
        </div>
        <!-- responsive -->
        <div class="nav-switch">
            <i class="fa fa-bars"></i>
        </div>
        <!-- site menu -->
        <nav class="main-menu">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="comic.jsp">Free Comic</a></li>
                <li><a href="contact_us.jsp">Contact</a></li>
              	<li><a href="review.jsp">Review</a></li>
                <li><a href="about.jsp">About Us </a></li>
                <li ><a class="hidden-md"href="../index.jsp">log out</a></li>
            </ul>
        </nav>
    </div>
</header>
<div class="latest-news-section">
    <div class="ln-title">Featured Comics</div>
    <div class="news-ticker">
        <div class="news-ticker-contant">
            <div class="nt-item"><span class="new">comedy</span>kamvret lyfe SGT risiasi </div>
            <div class="nt-item"><span class="strategy">adventure</span>garudayana by mamang racing </div>
            <div class="nt-item"><span class="racing">romantic</span>spooky sweatheart by ibeng turbo </div>
        </div>
        </div>
    </div>
</div>
<body>     
	<h2 class="text-center" style="margin-top: 15px;">Choose Your comic's</h2>
    <p class="page-description text-center">Chose Your Comic Who Want You Read</p>
		<br/><br/>
		<div class="container">
		
		
		
			<form action="search.jsp" method="get">
			<div class="row">
				<div class='col-md-10'>
					<input class="form-control" type="text" placeholder="Search comic..." aria-label="Search" id="search" name="search">    
				</div>    
				<div class='col-md-2'>
					<input type="submit" class="btn btn-outline-white btn-block"  style="background-color: orange; color: black;" value="Search">					
				</div>
			</div>
			</form>
		</div>
		<br/><br/>
    			
<%for(int ar=0;ar<aray.size();ar++){
		%>	
<section class="xop-section" onmouseover="<%=aray.get(ar).toLowerCase()%>()" id="<%=aray.get(ar).toLowerCase()%>">
			<div class="xop-wrapper">
				<div class="xop-container">
	<%rs=stmt.executeQuery("SELECT * FROM `mytable` WHERE genre='"+aray.get(ar)+"' ORDER BY title ASC");  
	           while(rs.next()){%>
            <a class="project" data-toggle="modal" href="#portfolio1Modal<%out.println(rs.getInt(1));%>">
        <figure>

        <img class="img-fluid" src="getImageDetails.jsp?your_id=<%out.println(rs.getInt(1));%>" onerror="this.onerror=null; this.src='img/cover.jpg'">
                    <figcaption>
                        <div>
                            <h3><% out.println(rs.getString(2));%></h3>
                            <p><%out.println(rs.getString(4));%></p>
                        </div>
                                      <div class="card-overlay">
                <div class="genretop">
                  <span><%=aray.get(ar)%></span>
                </div>
                <div class="rating">
                  <ion-icon name="star-outline"></ion-icon>
                  <span><%out.println(rs.getString(17));%></span>
                </div>
                <div class="play">
                  <ion-icon name="read"></ion-icon>
                </div>
              </div>  
                    </figcaption>
                </figure>
            </a>
                    <% }
	        rs.close();%> 
</section>
		
		<%}
		%>

<%rs=stmt.executeQuery("select * from mytable");
		while(rs.next()){%>
	<center class="modal fade" id="portfolio1Modal<%out.println(rs.getInt(1));%>"  tabindex="-1" role="dialog" aria-hidden="true">
		 <aside>
			<article class="profile card">
			   <header>
				  <img src="getImageDetails.jsp?your_id=<%out.println(rs.getInt(1));%>" onerror="this.onerror=null; this.src='img/cover.jpg'" class="authors">
				  <h2 class="judul-pro"><% out.println(rs.getString(2));%></h2>
				  <p class="tengah-txt"><%out.println(rs.getString(17));%> <i class="fa fa-star" aria-hidden="true"></i></p>
			   </header>
			   <section>
				  <h2 class="sub-pro">Genre : <%out.println(rs.getString(4));%></h2>

					<a href="pre_comic.jsp">
				     <button class="site-profile2">
                        Chose another comic !!!
                     </button>
				  </a>
				<a href="deskripsi_komik.jsp?id=<%out.println(rs.getInt(1));%>">
				     <button class="site-profile2" type="button" onclick="sends(<%out.println(rs.getInt(1));%>))">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;To comic !!!&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  
                     </button>
				  </a>
				</section>
				
			</article>
			
		</aside>
	</center>
<% }%>
		
		
        </div>
        <div class="site-pagination sp-style-2" >
            <span class="active">01.</span>
            <a href="#">02.</a>
            <a href="#">03.</a>
            <button class="site-btn pull-right" style="margin-top: -7px;">Next Page</button>
        </div>


    </div>
</section>
<footer class="footer-section" style="margin-top: 50px;">
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
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.marquee.min.js"></script>
<script src="js/main.js"></script>
<a id="scroll" style="display: none;"><span></span></a>
		<jsp:include page="scripts.jsp"></jsp:include>
		<script src="js/slideshow.js"></script>
		
		<script src="js/prefent.js"></script>
		<script type="text/javascript">
		<%
		for(int ar=0;ar<aray.size();ar++){
			
			%>
			function <%= aray.get(ar).toLowerCase()%>(){
			    document.getElementById("genre").innerHTML = <%out.print("'"+aray.get(ar)+"'");%>;
			}			
		<%}
		%>
		</script>
</body>
</html>
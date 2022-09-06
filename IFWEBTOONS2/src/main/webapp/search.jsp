<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
	
	<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html lang="en">
	<%
String connectionURL = "jdbc:mysql://localhost:3306/descfilm"; 
Connection connection = null; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
connection = DriverManager.getConnection(connectionURL, "root", "");
	Statement stmt=connection.createStatement();  
	String search=request.getParameter("search");
	ResultSet rs=stmt.executeQuery("SELECT * FROM `mytable` WHERE title REGEXP '"+search+"' OR genre REGEXP '"+search+"' OR year REGEXP '"+search+"' OR language REGEXP '"+search+"'"); 
	String a=null;
%>

<head>
		<title>Search | IF Webtoons</title>
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
	</head>
	<body id="page-top" style="background-image: url('img/Dustywhite.png');" onload="prefent()"> 
<header class="header-section">
    <div class="container">
        <!-- logo -->
   
        <a class="site-logo" href="index.jsp">
            <img src="img/logo1.png" alt="">
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
                <li><a href="comic.jsp">Free Comic</a>
                <li><a href="contact_us.jsp">Contact</a></li>
                <li><a href="review.j	sp">Review</a></li>
                <li><a href="about.jsp">About us </a></li>
                <li ><a class="hidden-md"href="..\index.jsp">log out</a></li>
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
<body><br/><br/>  
	<h2 class="text-center" style="margin-top: 15px;">Your Search Comic Result</h2>
    <p class="page-description text-center">Choose comic you want to read.</p>
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
		<section onmouseover="other()" id="sears">
	        <div class="container">
	            <div class="row">
	                <div class="col-md-8">
	                    <h2 class="section-heading" style="color: black" id="namasearch">Search <%= search%></h2>
	                </div>
	            </div>
	            <div class="row" id="searsi">
	            <% while(rs.next()){%>	        	   	        	 		
	            <div class="col-md-4 mb-4 box-item" >
				<a class="box-link" data-toggle="modal" href="#portfolio1Modal<%out.println(rs.getInt(1));%>">
	            	<div class="box-hover">
	                	<div class="portfolio-hover-content">
	                    	<p style="text-align: center; color: white"> <%out.println(rs.getString(17));%> <i class="fa fa-star" aria-hidden="true"></i> </p>
	                    </div>
	                </div>
	                <img class="img-fluid" src="getImageDetails.jsp?your_id=<%out.println(rs.getInt(1));%>" width="640px" height="426px">
	            </a>
	            <div class="portfolio-caption">
	            	<h4 style="text-align: center; color: white"><%out.println(rs.getString(2));%></h4>
	                <p style="text-align: center; color: white"> <%out.println(rs.getString(4));%> </p>
	            </div>
	        </div>
	       <%} %>
	            </div>
			</div>
		</section>
		<br/><br/>
		<%rs=stmt.executeQuery("SELECT * FROM `mytable` WHERE title REGEXP '"+search+"' OR genre REGEXP '"+search+"' OR year REGEXP '"+search+"' OR language REGEXP '"+search+"'"); 
		while(rs.next()){%>				
			<div class="modal fade" id="portfolio1Modal<%out.println(rs.getInt(1));%>" tabindex="-1" role="dialog" aria-hidden="true">
        	<div class="modal-dialog modal-dialog-centered" role="document">
            	<div class="modal-content">
                	<div class="modal-header">
                    	<h3 class="modal-title text-uppercase"><% out.println(rs.getString(2));%></h3>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        	<span aria-hidden="true">&times;</span>
                        </button>
					</div>
					<div class="modal-body">
                    	<div class="video-container">
                        	<iframe width="853" height="480" src="<% out.println(rs.getString(16));%>" frameborder="0" donotallowfullscreen></iframe>
                        </div>
                        <p style="text-align: justify;"><% out.println(rs.getString(13));%></p>
                        <div class="text-center">
                        	<a href="detail.jsp?id=<%out.println(rs.getInt(1));%>">
                            	<button class="btn btn-dark" style="background-color: maroon;" type="button" onclick="sends(<%out.println(rs.getInt(1));%>))">
                                	Learn more
                                </button>
                            </a>
                        </div>
					</div>
				</div>
	        </div>
		</div>
		<% }
		rs.close();
		%>		
		<br/><br/>
		<a id="scroll" style="display: none;"><span></span></a>
		<jsp:include page="scripts.jsp"></jsp:include>
		<script src="js/slideshow.js"></script>
		<script src="js/indexscript.js"></script>
		<script src="js/prefent.js"></script>
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/jquery.marquee.min.js"></script>
		<script src="js/main.js"></script>
	</body>


</html>
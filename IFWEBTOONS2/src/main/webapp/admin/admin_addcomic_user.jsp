<%@page import="jakarta.servlet.annotation.WebServlet"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="jakarta.servlet.annotation.WebServlet" %>

<%
try{
	if(session.getAttribute("idu")!=null){
		response.sendRedirect("index.jsp");
	}
}catch(Exception e){	
}
%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/descfilm"; 
Connection connection = null; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
connection = DriverManager.getConnection(connectionURL, "root", "");
Statement st= connection.createStatement();
ResultSet rs=null;
String a,b,c,d,e,f,g,i,j,k,l,m,n,o,p,q;
String id;
a="";
b="";
c="";
d="";
e="";
f="";
g="";
int h=1900;
i="";
j="";
k="";
l="";
m="";
n="";
o="";
p="";
q="";
%>

<html lang="en">
    <head>
        <meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link href="images/adminlog.png" rel="shortcut icon"/>
		<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
		<script src="https://kit.fontawesome.com/a81368914c.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    	<link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    	<link href="css/video.css" rel="stylesheet">
		<link href="css/NewFile.css" rel="stylesheet">
		<link href="css/only_black.css" rel="stylesheet">
		<link href="css/style_add_admin_comic.css" rel="stylesheet">
	    <link href="css/buble.css" rel="stylesheet">
    	<link href="css/bootstrap.min.css" rel="stylesheet">
    	<link href="css/blockscroll.css" rel="stylesheet">
    	<link href="css/add_delete_edit_comic.css" rel="stylesheet">
		
        <title>Admin Zone | IF Webtoons</title>
         <style>
 	.tessssss {
 		@in 'https://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css';
 	}
 </style>
    </head>
    <body onload="loads()" id="page-top" ng-app="validationApp" ng-controller="mainController">

       


    <div id="table1">
      <header>
    <nav class="navbar navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand">		
				<img src="img/logo1.png" alt="IF Comic Logo">
			</a>
    <form class="d-flex">
      <button class="btn btn-outline-success" type="submit"><a id="logoutnav" class="nav-link text-uppercase black" href="login_user_addcomic.jsp" ><b>logout</b></a></button>
    </form>
  </div>
</nav>
</header> 
    <div style="background-color: #E5E5E5;">
    <div class="container-md card" n>
         <h2 style="text-align: center;">Hello Authors !!!</b></h2>
         <h2 style="text-align: center;">This is the Terms and Conditions to Add your comics on IF Webtoons.</b></h2>
         <hr>
         </br>
        <ol type = "1">
         <li class="judul-sub">Registered as a premium account in IF Webtoons ( you have already done this 😀 ). </li>
         <li class="judul-sub">
        Contact us on this page at http://localhost:8080/IFWEBTOONS2/contact_us.jsp 
        or you can email our handsome admin at ferdicompany@gmail.com so we can contact you as soon as possible,
        and after that, we give your email permission so you can add a new folder for you. 
         </li>
         <li class="judul-sub">
         Our admins will give you a G-Drive link for you to add your comic. 
         </li>
         <li class="judul-sub">add a new folder with your Gdrive link with the folder with your name and 
         your comic’s name like the example below: 
         </li>
         <div class="text-center">
         	<img src="img/gdrive1.png" class="img-fluid" alt="...">
         </div>
          <div class="text-center judul-sub">
         	<P>Or With another example its look like this 😀.</P>
         </div>
         <div class="text-center">
         	<img src="img/gdrive2.png" class="img-fluid" alt="...">
         </div>
         <li class="judul-sub">add a new folder with your Gdrive link with the folder with your name and 
         your comic’s name like the example below: 
         </li>
         <div class="text-center">
         	<img src="img/gdrive3.png" class="img-fluid" alt="...">
         </div>
         <div class="text-center judul-sub">
         	<P>Or With another example its look like this 😀.</P>
         </div>
         <div class="text-center">
         	<img src="img/gdrive4.png" class="img-fluid" alt="...">
         </div>
         <li class="judul-sub">Awesome, now you can add your comic into this folder.
         </li>
         <li class="judul-sub"> next open the excel document in this G-drive.
         </li>
          <div class="text-center">
         	<img src="img/gdrive5.png" class="img-fluid" alt="...">
         </div>
         <li class="judul-sub">add your name, your comic name and your comic chapter and date uploded like the example 
         below :
         </li>
          <div class="text-center">
         	<img src="img/gdrive6.png" class="img-fluid" style="max-height: 500px;" alt="...">
         </div>
         <li class="judul-sub">Awesome, you already add your comic into ifwebtoons, please kindly wait your comic
         to be uploaded into IFWebtoons by our admins, ASAP.  
         </li>
         <li class="judul-sub">After you add your comic maybe you can get a kiss from our supreme commander Andrew :v
         </li>
      </ol>
    </div>
      <div class="table-responsive" style="background-color: #E5E5E5;">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2 style="overflow: hidden;">The Comic That Has Already Listing On Our Website</b></h2></div>
                    <div class="col-sm-4">
                    </div>
                </div>
            </div>
                       <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>#ID</th>
                        <th>Title</th>
                        <th>Genre</th>
                        <th>Language</th>
                        <th>Runtime</th>
                        <th>Year</th>
                        <th>Image</th>
                    </tr>
                </thead>
                <tbody>
	                        
	                    <%rs= st.executeQuery("SELECT * FROM `mytable`");
	                    while(rs.next()){%>
	                    <tr onclick="call(<%out.println(rs.getInt(1));%>)">
						<td><% out.println(rs.getInt(1));%></td>
				        <td><% out.println(rs.getString(2));%></td>
				        <td><% out.println(rs.getString(4));%></td>
				        <td><% out.println(rs.getString(5));%></td>
				        <td><% out.println(rs.getString(6));%></td>
				        <td><% out.println(rs.getString(10));%></td>
						<td><img class="img-fluid" style="align-self: center; " src="getImageDetails.jsp?your_id=<%out.println(rs.getInt(1));%>" ></td>
                    </tr>
                    <%} %>
                </tbody>
            </table>
        </div>
    </div>
    </div>
    	<footer>
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
                            <h1 class="text-white font-weight-normal home-5-title mb-0">Thank You Author's For Adding Your Comic</h1>
                            <p class="text-white-70 mt-4 f-15 mb-0">catch one buble to get amazing reward from our supreme comander 😂.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</br>
		<center><p>IF WEBTOONS &#169; 2022 All Rights Reserved </p></center>
	 </footer>
    
    
</div>
        </link>
        </link>
        <br/>


   
               
        
		
<!--         <br/><br/><br/>
        <footer class="py-5 text-center text-small" style="background-color: firebrick" onmouseover="other()">
			<div class="container">
				<p style="color: white;">Copyright &copy; IF Webtoons 2022</p>
				<ul class="list-inline">
					<li class="list-inline-item">
						<a href="#" style="color: white">Privacy Policy</a>
					</li>
					<li class="list-inline-item">
						<a href="#" style="color: white">Terms of Use</a>
		            </li>
				</ul>
			</div>
		</footer> -->

		
        <jsp:include page="scripts.jsp"></jsp:include>
        <script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script> 
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
		<script src="js/buble.js"></script>
        <script src="js/angular.js"></script>
        <script src="js/angular-validatemovie.js"></script>
        <script src="js/logicadmin.js"></script>
        <script href="js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="js/login_admin_add_comic.js"></script>
        <a id="scroll" style="display: none;"><span></span></a>
        
        
       <script type="text/javascript">
       var input = document.querySelector('input[type=file]');
       var textarea = document.getElementById('a');

       function readFile(event) {
         textarea.textContent = "1";
         console.log(event.target.result);
       }

       function changeFile() {
         var file = input.files[0];
         var reader = new FileReader();
         reader.addEventListener('load', readFile);
         reader.readAsText(file);
       }
       input.addEventListener('change', changeFile);
       </script>
    </body>
</html>
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
String a,b,c,d,e,f,g,i,j,k,l,m,n;
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
%>

<html lang="en">
<html>
<head>
	<title>Animated Login Form</title>
	<link rel="stylesheet" type="text/css" href="css/login_admin_add.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
        <%
        if(session.getAttribute("ids")==""|| session.getAttribute("ids")==null){
        	%>
	<div id="logen">
	<img class="wave" src="images/wave.png">
	<div class="container">
		<div class="img">
			<img src="images/admin_photo.svg">
		</div>
		<div class="login-content">
			<form action="loginadmin.jsp" method="post">
				<h2 class="title">Add Comic</h2>
				<img src="images/adminlogoo.png">
			</br></br>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Username</h5>
           		   		<input type="text" class="input_user" id="inputUsername" label="Username" name="id" required="true">
           		   		<p for="inputUsername" style="color:red"></p>
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Password</h5>
           		    	<input type="password" class="input_user" id="inputPassword" label="Password" name="pass" required="true" type="password" redisplay="true">
           		    	 <p for="inputPassword" style="color:red"></p>
            	   </div>
            	</div>
			</br>
			<p id="text" value="" style="color: red; text-transform: uppercase; align-content: center">
                    <%if(session.getAttribute("val")=="0"|| session.getAttribute("val")==null){out.println("");}else{out.println("Wrong username and password");}  %></p>
            	<input type="submit" class="btn" value="Login">
            </form>
        </div>
    </div>
</div>
        	<% 
        }
        %>    
    <script type="text/javascript" src="js/login_admin_add_comic.js"></script>
     <jsp:include page="scripts.jsp"></jsp:include>
        <script src="js/angular.js"></script>
        <script src="js/angular-validatemovie.js"></script>
        <script src="js/logicadmin.js"></script>
        
        
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

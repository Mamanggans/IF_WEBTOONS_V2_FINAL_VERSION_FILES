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
    <head>
        <meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link href="images/adminlog.png" rel="shortcut icon"/>
		<link href="css/bootstrap.css" rel="stylesheet">
		<link href="css/stylesheet.css" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
		<script src="https://kit.fontawesome.com/a81368914c.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
		
        <title>Admin Zone | IF Webtoons</title>
    </head>
    <body onload="loads()" id="page-top" ng-app="validationApp" ng-controller="mainController">

        <%
        if(session.getAttribute("ids")==""|| session.getAttribute("ids")==null){
        	%>

  <link rel="stylesheet" type="text/css" href="css/login_admin_add_tes.css">
	<div id="logen" style="overoverflow: hidden;">
	<img class="wave" src="images/wave.png">
	<div class="container_log">
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
			
                    <%if(session.getAttribute("val")=="0"|| 
                    session.getAttribute("val")==null){ %>
                    	<script type="text/javascript">
                    	out.println("");
                    	  </script>
                    	<% }
                    else{ %>
                    	<script type="text/javascript">
                    	alert("your password or email are wrong");
                    	  </script>
                    	<% }  %>
            	<input type="submit" class="btn" value="Login">
            </form>
        </div>
    </div>
</div>
</link>
<%  } %>
        
        
            
        <div class="container">
         <a id="logoutnav" class="nav-link text-uppercase"  href="logout.jsp" style="display: 
         <%if(session.getAttribute("ids")==""|| session.getAttribute("ids")==null){out.println("none");}else{out.println("unset");} %>"><b>logout</b></a>
        	<div id="table1" style="display: <%if(session.getAttribute("ids")==""|| session.getAttribute("ids")==null||session.getAttribute("ed")!=""){out.println("none");}else{out.println("unset");} %>">
        		
        		<div class="row">
	                <div class="col-md-12" >
	                    <h3 class="mt-5 mb-5 text-center text-uppercase" style="color: white;">Comic list</h3>
	                    <button id="add" class="btn btn-info" onclick="adds()">Add a new Comic</button><br/><br/>
						<table class="text-center table table-bordered pb-5" id="movietbl" width="100%" cellspacing="0" style="background-color:white">
	                        <thead style="background-color: brown; color:white">
	                        	<tr>
		                        	<th>#ID</th>
		                        	<th>Title</th>
		                            <th>Genre</th>
		                            <th>Language</th>
		                            <th>Runtime</th>
		                            <th>Year</th>
		                            <th>Image</th>
		                            <th>Action</th>
								</tr>
	                        </thead>
	                        <%
	                        rs= st.executeQuery("SELECT * FROM `mytable`");
	                        while(rs.next()){
	                        	%>
	                        	<tr onclick="call(<%out.println(rs.getInt(1));%>)">
						<td><% out.println(rs.getInt(1));%></td>
				        <td><% out.println(rs.getString(2));%></td>
				        <td><% out.println(rs.getString(4));%></td>
				        <td><% out.println(rs.getString(5));%></td>
				        <td><% out.println(rs.getString(6));%></td>
				        <td><% out.println(rs.getString(10));%></td>
				        <td><img class="img-fluid" src="getImageDetails.jsp?your_id=<%out.println(rs.getInt(1));%>" width="90px" height="120px"></td>
				        <td>
				        <form action="edit.jsp" method="post">
				        <input type="hidden" value="<%out.println(rs.getInt(1));%>" name="movie">
				        <a href="#forms" onclick="edit()"><input type="submit" style="color:black;background-color:orange" class="btn  btn-block" value="Edit"></a>
				        
				        </form>
			        		<br/>
			        		<form action="deletem" method="post" onsubmit="return confirm('Are you sure you want to Delete?');">
					        <input type="hidden" value="<%out.print(rs.getInt(1));%>" name="movie">
					        <input type="submit" class="btn btn-danger btn-block" value="Delete">		        
					        </form>
			        	</td>
				        </tr>
	                        <%}
	                        %>
	                    </table>
	                </div>
	            </div>
        	</div>
        </div>
        <br/>
        <div class="container" style="background-color: brown; color: white">
        	<div id="forms" style="display: <%if(session.getAttribute("ed")==""|| session.getAttribute("ed")==null){out.println("none");}else{out.println("unset");} %>">
	        	<div class="col-md-12">
	        	<br/><br/>
		        	<h4 class="text-center mb-3">Comic Data Form</h4>
		        	<%if(session.getAttribute("ed")!=""|| session.getAttribute("ed")!=null){
		        		String idz="" ;		        		
		        			try{idz=session.getAttribute("ed").toString();
		        			rs = st.executeQuery("SELECT * FROM `mytable` WHERE `id` ='"+idz+"'");
				        	rs.next();				        	
				        	a= rs.getString(2);		        	
				        	b= (rs.getString(4));
				        	c= (rs.getString(5));
				        	d= (rs.getString(6));
				        	e= (rs.getString(7));
				        	f= (rs.getString(8));
				        	g= (rs.getString(9));
				        	h= rs.getInt(10);
				        	i= (rs.getString(11));
				        	j= (rs.getString(12));
				        	k= (rs.getString(13));
				        	l= (rs.getString(14));
				        	m= (rs.getString(15));
				        	n= (rs.getString(16));
		        			}catch(Exception se){		        				
		        			}        			
		        	}
		        	
		        	%>		        	
		        	<form id="tesform" name="movieForm" enctype="multipart/form-data"  class="form-group needs-validation" action="<%if(session.getAttribute("ed")==""|| session.getAttribute("ed")==null){out.print("addservlet");}else{out.print("editservletm");} %>" method="post" novalidate>
		            	<div class="row">
		            	<input type="text" name="id" value="<%out.print(session.getAttribute("ed")); %>" style="display: none" >	                	
		                    <div class="col-md-7 mb-3" ng-class="{ 'has-error' : movieForm.title.$invalid && !movieForm.title.$pristine }">
		                    	<label for="title">Title</label>
		                        <input type="text" id="title" value="<%out.println(a);%>" name="title" class="form-control" ng-minlength="1" placeholder="*required" required >
		                        <p ng-show="movieForm.title.$invalid && !movieForm.title.$pristine" class="help-block" style="color: orange">Title required.</p>
							</div>
		                    <div class="col-md-5 mb-3" ng-class="{ 'has-error' : movieForm.genre.$invalid && !movieForm.genre.$pristine }">
								<label for="genre">Genre</label>
								<input type="text" id="genre" name="genre" class="form-control" ng-minlength="1" value="<%out.println(b);%>"  placeholder="*required" required>		                        
								<p ng-show="movieForm.genre.$invalid && !movieForm.genre.$pristine" class="help-block" style="color: orange">Genre required.</p>
							</div>
						</div>
		                <div class="row">
							<div class="col-md-2 mb-3" ng-class="{ 'has-error' : movieForm.language.$invalid && !movieForm.language.$pristine }">
		                    	<label for="language">Language</label>
								<input type="text" id="language" name="language" class="form-control" ng-minlength="1" value="<%out.println(c);%>"  placeholder="*required" required>		                        		                    			                     
								<p ng-show="movieForm.language.$invalid && !movieForm.language.$pristine" class="help-block" style="color: orange">Language required.</p>
							</div>
		                    <div class="col-md-2 mb-3" ng-class="{ 'has-error' : movieForm.runtime.$invalid && !movieForm.runtime.$pristine }">
		                    	<label for="runtime">Chapters</label>
		                        <input type="text" id="runtime" name="runtime" class="form-control" ng-minlength="2" value="<%out.println(d);%>" placeholder="*required" required>
								<p ng-show="movieForm.runtime.$invalid && !movieForm.runtime.$pristine" class="help-block" style="color: orange">Runtime required.</p>
							</div>
		                    <div class="col-md-8 mb-3" ng-class="{ 'has-error' : movieForm.producer.$invalid && !movieForm.producer.$pristine }">
		                    	<label for="producer">Writer</label>
		                        <input type="text" id="producer" name="producer" class="form-control" ng-minlength="1" value="<%out.println(e);%>" placeholder="*required" required>
								<p ng-show="movieForm.producer.$invalid && !movieForm.producer.$pristine" class="help-block" style="color: orange">Producer required.</p>
							</div>
						</div>
		                <div class="row">
		                	<div class="col-md-3 mb-3" ng-class="{ 'has-error' : movieForm.director.$invalid && !movieForm.director.$pristine }">
		                    	<label for="director">Comic Artist </label>
		                        <input type="text" id="director" name="director" class="form-control" ng-minlength="1" value="<%out.println(f);%>" placeholder="*required" required>
								<p ng-show="movieForm.director.$invalid && !movieForm.director.$pristine" class="help-block" style="color: orange">Director required.</p>
							</div>
		                    <div class="col-md-5 mb-3" ng-class="{ 'has-error' : movieForm.distributor.$invalid && !movieForm.distributor.$pristine }">
		                    	<label for="distributor">Distributor</label>
		                        <input type="text" id="distributor" name="distributor" class="form-control" ng-minlength="1" value="<%out.println(g);%>" placeholder="*required" required>
								<p ng-show="movieForm.distributor.$invalid && !movieForm.distributor.$pristine" class="help-block" style="color: orange">Distributor required.</p>
							</div>
		                    <div class="col-md-2 mb-3" ng-class="{ 'has-error' : movieForm.year.$invalid && !movieForm.year.$pristine }">
		                    	<label for="year">Year</label>
		                        <input type="number" id="year" name="year" class="form-control" ng-minlength="4" value="<%out.print(h);%>" placeholder="*required" required>
								<p ng-show="movieForm.year.$invalid && !movieForm.year.$pristine" class="help-block" style="color: orange">Year required.</p>
							</div>
		                    <div class="col-md-2 mb-3" ng-class="{ 'has-error' : movieForm.rating.$invalid && !movieForm.rating.$pristine }">
		                    	<label for="rating">Rating</label>
								<select class="custom-select d-block w-100" id="rating" name="rating" class="form-control" required>
	                                <option value="">Rating...</option>
	                                <option value="E">E</option>
	                                <option value="PG">PG</option>
	                                <option value="PG-13">PG-13</option>
	                                <option value="R">R</option>
	                            </select>
	                            <script type="text/javascript">
	                            document.getElementById("rating").value = <%out.print("'"+i+"'"); %>;
	                            </script>
								<p ng-show="movieForm.rating.$invalid && !movieForm.rating.$pristine" class="help-block" style="color: orange">Rating required.</p>
							</div>
						</div>
		                <div class="row">
		                	<div class="col-md-12 mb-3" ng-class="{ 'has-error' : movieForm.casts.$invalid && !movieForm.casts.$pristine }">
		                    	<label for="casts">Characters</label>
		                        <textarea id="casts" name="casts" class="form-control" ng-minlength="1"   placeholder="*required" rows="1" required><%out.println(j);%></textarea>
								<p ng-show="movieForm.casts.$invalid && !movieForm.casts.$pristine" class="help-block" style="color: orange">Casts required.</p>
							</div>
		                    <div class="col-md-12 mb-3" ng-class="{ 'has-error' : movieForm.synopsisshort.$invalid && !movieForm.synopsisshort.$pristine }">
		                    	<label for="synopsisshort">Synopsis Short</label>
		                        <textarea id="synopsisshort" name="synopsisshort" class="form-control" ng-minlength="1"  placeholder="*required" rows="2" required><%out.println(k);%></textarea>
								<p ng-show="movieForm.synopsisshort.$invalid && !movieForm.synopsisshort.$pristine" class="help-block" style="color: orange">Short synopsis required.</p>
							</div>
						</div>
		                <div class="row">
		                	<div class="col-md-12 mb-3" ng-class="{ 'has-error' : movieForm.synopsisline1.$invalid && !movieForm.synopsisline1.$pristine }">
		                    	<label for="synopsisline1">Synopsis Line 1</label>
		                        <textarea id="synopsisline1" name="synopsisline1" class="form-control" ng-minlength="1"  placeholder="*required" rows="5" required><%out.println(l);%></textarea>
								<p ng-show="movieForm.synopsisline1.$invalid && !movieForm.synopsisline1.$pristine" class="help-block" style="color: orange">Synopsis Line 1 required.</p>
							</div>
		                    <div class="col-md-12 mb-3">
		                    	<label for="synopsisline2">Synopsis Line 2</label>
		                        <textarea id="synopsisline2" name="synopsisline2"  class="form-control" rows="5"><%out.println(m);%></textarea>
							</div>
						</div>
		                <div class="row">
		                	<div class="col-md-6 mb-3" ng-class="{ 'has-error' : movieForm.videourl.$invalid && !movieForm.videourl.$pristine }">
		                    	<label for="videourl">Video URL</label>
		                        <input type="text" id="videourl" name="videourl" class="form-control" ng-minlength="1" value="<%out.println(n);%>"  placeholder="*required" required>
								<p ng-show="movieForm.videourl.$invalid && !movieForm.videourl.$pristine" class="help-block" style="color: orange">Video URL required.</p>
							</div>
							<div class="col-md-6 mb-3">
		                    	<label for="files">Image</label>
		                    	<input type="file" id="files" accept="image/*"  name="files"  class="form-control">
		                    	<textarea style="display: none" id="a" name="a" rows="" cols="">0</textarea>
							</div>
						</div>
						<div class="col-md-12 mb-6">
		                	<ul class="row list-inline">
								<li class="list-inline-item">
									<button id="addBtn" style="display: <%if(session.getAttribute("ed")==""|| session.getAttribute("ed")==null){out.println("unset");}else{out.println("none");} %>" class="btn btn-info btn-block" type="submit" value="Add movie" name="addBtn">Add movie</button>
								</li>
								<li class="list-inline-item">
									<button style="display: <%if(session.getAttribute("ed")==""|| session.getAttribute("ed")==null){out.println("none");}else{out.println("unset");} %>" id="updateBtn" class="btn btn-warning btn-block" type="submit" value="Update movie data" name="updateBtn">Edit movie data</button>
								</li>
								<li class="list-inline-item">
									<button style="display: <%if(session.getAttribute("ed")==""|| session.getAttribute("ed")==null){out.println("none");}else{out.println("unset");} %>" id="removeBtn" class="btn btn-danger btn-block" type="submit" value="Remove movie" name="deleteBtn">Delete movie</button>
								</li>
								<li class="list-inline-item">
									<button id="clearBtn" style="display: <%if(session.getAttribute("ed")==""|| session.getAttribute("ed")==null){out.println("unset");}else{out.println("none");} %>;background-color: grey; color: white" class="btn btn-block" type="reset" value="Clear form" name="clearBtn">Clear form</button>
								</li>
								<li class="list-inline-item">
								<a href="<%if(session.getAttribute("ed")==""|| session.getAttribute("ed")==null){out.println("");}else{out.println("edit.jsp?c=1");} %>">
									<button id="cancel"  style="background-color: black; color: white" type="button" class="btn btn-block" value="Cancel" name="cancel" onclick="">Cancel</button>		
								</a><br/>
						        </li>
							</ul>
						</div>
					</form>
	        	</div>
			</div>
        </div>
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
        <script src="js/angular.js"></script>
        <script src="js/angular-validatemovie.js"></script>
        <script src="js/logicadmin.js"></script>
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

      <div class="logo">
                <a href="#">
                    <img src="images/icon/logo.png" alt="Cool Admin" />
                </a>
            </div>
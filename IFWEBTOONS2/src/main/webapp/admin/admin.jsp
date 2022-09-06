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

        <%
        if(session.getAttribute("ids")==""|| session.getAttribute("ids")==null){
        	%>

  <link rel="stylesheet" type="text/css" href="css/login_admin_add_tes.css">
  
	<div id="logen" class="example">
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
            	      <div class="login-txt-bel">
						<a href="home.html"><b>Click to go back Main Admin Page</b></a> 
					</div>
            </form>
        </div>
    </div>
</div>
</link>
<%  } %>


    <div id="table1"  style=" display: <%if(session.getAttribute("ids")==""|| session.getAttribute("ids")==null||session.getAttribute("ed")!=""){out.println("none");}else{out.println("unset");} %>">
      <header>
    <nav class="navbar navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand">		
				<img src="img/logo1.png" alt="IF Comic Logo">
			</a>
    <form class="d-flex">
      <button class="btn btn-outline-success" type="submit"><a id="logoutnav" class="nav-link text-uppercase black" href="logout.jsp" style=" display: 
         <%if(session.getAttribute("ids")==""|| session.getAttribute("ids")==null){out.println("none");}else{out.println("unset");} %>"><b>logout</b></a></button>
    </form>
  </div>
</nav>
</header> 
    <div class="video_wrap">
        <div class="overlay"></div>
        <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
          <source src="Video/bg1.mp4" type="video/mp4">
        </video>
        <div class="container h-100">
          <div class="d-flex h-100 text-center align-items-center">
            <div class="w-100 text-white">
              <h1 class="display-3">Add Comic</h1>
              <p class="lead mb-0">Our Comic Add</p>
            </div>
          </div>
        </div>
    </div> 
      <div class="table-responsive" style="background-color: #E5E5E5;">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2 style="overflow: hidden;">Add <b>comic</b></h2></div>
                    
                    <div class="col-sm-4">
                    <a id="add" type="button" href="http://localhost/phpmyadmin/index.php?route=/sql&server=1&db=descfilm&table=comic&pos=0" class="btn btn-info add-new mx-3"><i class="fa fa-plus"> </i> Add New Comic Page</a>
                        <button id="add" type="button" onclick="adds()" class="btn btn-info add-new"><i class="fa fa-plus"></i> Add New</button>
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
                        <th>Action</th>
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
                        <td>
					        <form action="edit.jsp" method="post" style="margin-left: -4px;">
				        <input type="hidden" value="<%out.println(rs.getInt(1));%>" name="movie">
				        <a href="#forms" onclick="edit()"><input style="padding-right: 28px;" type="submit" class="btn btn-warning btn-block" value="Edit"></a>
				        
				        </form>
				        </br>
			        		<form action="deletem" method="post" onsubmit="return confirm('Are you sure you want to Delete?');">
					        <input type="hidden" value="<%out.print(rs.getInt(1));%>" name="movie">
					        <input type="submit" class="btn btn-danger btn-block" value="Delete">		        
					        </form>
                        </td>
                    </tr>
                    <%} %>
                </tbody>
            </table>
        </div>
    </div>
    	<footer>
		<center><p>IF WEBTOONS &#169; 2022 All Rights Reserved </p></center>
	 </footer>
    
    
</div>
        </link>
        </link>
        <br/>


   
<div id="forms" class="tessssss" style="display: <%if(session.getAttribute("ed")==""|| session.getAttribute("ed")==null){out.println("none");}else{out.println("unset");} %>">
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
				        	o= (rs.getString(18));
				        	p= (rs.getString(19));
				        	q= (rs.getString(20));
		        			}catch(Exception se){		        				
		        			}        			
		        	}
		        	
		        	%>	
<header>
<nav class="navbar navbar-light bg-light fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand">		
				<img src="img/logo1.png" alt="IF Comic Logo">
			</a>
    <form class="d-flex">
      <button class="btn btn-outline-success" type="submit"><a id="logoutnav" class="nav-link text-uppercase black" href="logout.jsp" style=" display: 
         <%if(session.getAttribute("ids")==""|| session.getAttribute("ids")==null){out.println("none");}else{out.println("unset");} %>"><b>logout</b></a></button>
    </form>
  </div>
</nav>
</header> 
</br>
<div class="container bootstrap snippets bootdey">

    <hr>
    <ol class="breadcrumb">
    	<li><a href="<%if(session.getAttribute("ed")==""|| session.getAttribute("ed")==null){out.println("");}else{out.println("edit.jsp?c=1");} %>">Description Comic</a></li>
    	<li>&nbsp;&nbsp;/&nbsp;&nbsp;</li>
		<li><a href="#">Add Comic </a></li>&nbsp;
		<li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-refresh"></i></a></li>
	</ol>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="well profile">
                
                <h3 class="name pull-left clearfix">Add, Delete, and Edit.</h3>
            </br>
                <div class="clearfix"></div>

                
                    <div class="tab-pane" id="tab">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="tab-content">
                                    <div class="tab-pane active" id="basic">
                                        <form class="form-horizontal needs-validation" id="tesform"
                                         name="movieForm" enctype="multipart/form-data" 
                                          action="<%if(session.getAttribute("ed")==""|| session.getAttribute("ed")==null){out.print("addservlet");}else{out.print("editservletm");} %>"
                                           method="post" novalidate>

                                            <input type="text" name="id" value="<%out.print(session.getAttribute("ed")); %>" style="display: none" >
                                            <div class="form-group">
                                                <label class="form_par col-lg-2 control-label">Title :</label>
                                                <div class="col-lg-10" ng-class="{ 'has-error' : movieForm.title.$invalid && !movieForm.title.$pristine }">
                                                    <input id="title" type="text" class="form-control" placeholder="Title" ng-minlength="1"
                                                     value="<%out.println(a);%>" name="title" required>
                                                    <p ng-show="movieForm.title.$invalid && !movieForm.title.$pristine" class="help-block" style="color: orange">Title required.</p>
                                                </div>
                                            </div>
                                            <div class="form-group" ng-class="{ 'has-error' : movieForm.genre.$invalid && !movieForm.genre.$pristine }">
                                                <label class="form_par col-lg-2 control-label" >Genre :</label>
                                                <div class="col-lg-10">
                                                    <input type="text" class="form-control" placeholder="Genre" id="genre" name="genre"  ng-minlength="1" value="<%out.println(b);%>" required >
                                                    <p ng-show="movieForm.genre.$invalid && !movieForm.genre.$pristine" class="help-block" style="color: orange">Genre required.</p>
                                                </div>
                                            </div>
                                            <div class="form-group" ng-class="{ 'has-error' : movieForm.language.$invalid && !movieForm.language.$pristine }">
                                                <label class="col-lg-2 control-label form_par">Language :</label>
                                                <div class="col-lg-10">
                                                    <input type="text" id="language" name="language" class="form-control" ng-minlength="1" value="<%out.println(c);%>"  required  placeholder="Language">
                                                    <p ng-show="movieForm.language.$invalid && !movieForm.language.$pristine" class="help-block" style="color: orange">Language required.</p>
                                                </div>
                                            </div>
                                            <div class="form-group" ng-class="{ 'has-error' : movieForm.language.$invalid && !movieForm.runtime.$pristine }">
                                                <label class="col-lg-2 control-label form_par">Chapters :</label>
                                                <div class="col-lg-10">
                                                    <input type="text" class="form-control" placeholder="Chapters" id="runtime" name="runtime" ng-minlength="2" value="<%out.println(d);%>"  required>
                                                    <p ng-show="movieForm.runtime.$invalid && !movieForm.runtime.$pristine" class="help-block" style="color: orange">chapter nya belum diisi woi.</p>
                                                </div>
                                            </div>
                                            <div class="form-group" ng-class="{ 'has-error' : movieForm.producer.$invalid && !movieForm.producer.$pristine }">
                                                <label class="col-lg-2 control-label form_par">Writer :</label>
                                                <div class="col-lg-10">
                                                    <input type="text" id="producer" name="producer" class="form-control" ng-minlength="1" value="<%out.println(e);%>" required placeholder="Writer">
                                                    <p ng-show="movieForm.producer.$invalid && !movieForm.producer.$pristine" class="help-block" style="color: orange">Producer required.</p>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label form_par" ng-class="{ 'has-error' : movieForm.director.$invalid && !movieForm.director.$pristine }">Comic Artist :</label>
                                                <div class="col-lg-10">
                                                    <input type="text" id="director" name="director" class="form-control" ng-minlength="1" value="<%out.println(f);%>" required placeholder="Comic Artist">
													<p ng-show="movieForm.director.$invalid && !movieForm.director.$pristine" class="help-block" style="color: orange">Director required.</p>
                                                </div>
                                            </div>
                                            <div class="form-group" ng-class="{ 'has-error' : movieForm.distributor.$invalid && !movieForm.distributor.$pristine }">
                                                <label class="col-lg-2 control-label form_par">Publisher :</label>
                                                <div class="col-lg-10">
                                                    <input type="text"  id="distributor" name="distributor" class="form-control" ng-minlength="1" value="<%out.println(g);%>" placeholder="*required" required placeholder="publisher">
                                                	<p ng-show="movieForm.distributor.$invalid && !movieForm.distributor.$pristine" class="help-block" style="color: orange">Publisher nya blm di isi kawan.</p>
                                                </div>
                                            </div>
                                            <div class="form-group" ng-class="{ 'has-error' : movieForm.year.$invalid && !movieForm.year.$pristine }">
                                                <label class="col-lg-2 control-label form_par">Year :</label>
                                                <div class="col-lg-10">
                                                    <input type="number" id="year" name="year" class="form-control" ng-minlength="4" value="<%out.print(h);%>" required placeholder="Year">
                                                    <p ng-show="movieForm.year.$invalid && !movieForm.year.$pristine" class="help-block" style="color: orange">Year required.</p>
                                                </div>
                                            </div>
                                           
                                            <div class="form-group" ng-class="{ 'has-error' : movieForm.rating.$invalid && !movieForm.rating.$pristine }">
                                                <label class="col-lg-2 control-label form_par" >Rate :</label>
                                                <div class="col-lg-10">
                                                    <select class="form-control" id="rating" name="rating" required>
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
                                            <div class="form-group" ng-class="{ 'has-error' : movieForm.casts.$invalid && !movieForm.casts.$pristine }">
                                                <label class="col-lg-2 control-label form_par">Characters :</label>
                                                <div class="col-lg-10">
                                                    <input type="text" id="casts" name="casts" class="form-control" ng-minlength="1" required placeholder="Characters" value="<%out.print(j);%>">
                                                    <p ng-show="movieForm.casts.$invalid && !movieForm.casts.$pristine" class="help-block" style="color: orange">karakter nya janga lupa dong sayang.</p>
                                                </div>
                                            </div>
                                            <div class="form-group" id="synopsisshort" name="synopsisshort" class="form-control" ng-minlength="1" required>
                                                <label class="col-lg-2 control-label form_par">Synopsis Short :</label>
                                                <div class="col-lg-10">
                                                    <textarea type="text" class="form-control" placeholder="Synopsis Short"id="synopsisshort" name="synopsisshort" ng-minlength="1"  required><%out.println(k);%></textarea>
                                                    <p ng-show="movieForm.synopsisshort.$invalid && !movieForm.synopsisshort.$pristine" class="help-block" style="color: orange">Short synopsis required.</p>
                                                </div>
                                            </div>
                                            <div class="form-group" ng-class="{ 'has-error' : movieForm.synopsisline1.$invalid && !movieForm.synopsisline1.$pristine }">
                                                <label class="col-lg-2 control-label form_par">Synopsis paragraph one :</label>
                                                <div class="col-lg-10">
                                                    <textarea type="text" class="form-control" rows="6" placeholder="Synopsis"id="synopsisline1" name="synopsisline1" 
                                                    ng-minlength="1"  required><%out.println(l);%></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label form_par">Synopsis paragraph Two :</label>
                                                <div class="col-lg-10">
                                                    <textarea type="text" class="form-control" rows="6" placeholder="Synopsis"id="synopsisline2" name="synopsisline2" ><%out.println(m);%>
                                                    </textarea>
                                                </div>
                                            </div>
							<div style="display: none;" sty ng-class="{ 'has-error' : movieForm.videourl.$invalid && !movieForm.videourl.$pristine }">
		                    	<label for="videourl">Video URL</label>
		                        <input type="text" id="videourl" name="videourl" class="form-control" ng-minlength="1" value="<%out.println(n);%>"  placeholder="*required" required>
								<p ng-show="movieForm.videourl.$invalid && !movieForm.videourl.$pristine" class="help-block" style="color: orange">Video URL required.</p>
							</div>
                                            <div class="form-group" ng-class="{ 'has-error' : movieForm.linkone.$invalid && !movieForm.linkone.$pristine }">
                                                <label class="form_par col-lg-2 control-label">Chapters URL 1 :</label>
                                                <div class="col-lg-10">
                                                    <input type="text" class="form-control" id="linkone" name="linkone" ng-minlength="1" value="<%out.print(o);%>" placeholder="URL">
                                                    <p ng-show="movieForm.linkone.$invalid && !movieForm.linkone.$pristine" class="help-block" style="color: orange">linknya jangan lupa dong sayang.</p>
                                                </div>
                                            </div>
                                            <div class="form-group" ng-class="{ 'has-error' : movieForm.linktwo.$invalid && !movieForm.linktwo.$pristine }">
                                                <label class="form_par col-lg-2 control-label">Chapters URL 2 :</label>
                                                <div class="col-lg-10">
                                                    <input type="text" class="form-control" placeholder="URL"  id="linktwo" name="linktwo" ng-minlength="1" value="<%out.print(p);%>" placeholder="URL">
                                                     <p ng-show="movieForm.linkone.$invalid && !movieForm.linkone.$pristine" class="help-block" style="color: orange">linknya jangan lupa dong sayang.</p>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="form_par col-lg-2 control-label">Chapters URL 3 :</label>
                                                <div class="col-lg-10">
                                                    <input type="text" class="form-control" placeholder="URL">
                                                </div>
                                            </div>
                                         
                                            <div class="form-group">
                                                <label  class="col-lg-2 control-label form_par">Banner :</label>
							<div class="col-md-6 mb-3">
		                    	<input type="file" id="files" accept="image/*"  name="files"  class="form-control">
		                    	<textarea style="display: none" id="a" name="a" rows="" cols="">0</textarea>
							</div>
                                                </div>    
                                            </div>
						<div class="col-md-12 mb-6 d-flex justify-content-center" style="">
		                	<ul class="row list-inline">
								<li class="list-inline-item">
									<button id="addBtn" style="display: <%if(session.getAttribute("ed")==""|| session.getAttribute("ed")==null){out.println("unset");}else{out.println("none");} %>
									;background-color: #6ba1ff;" 
									class="btn_add_comic" type="submit" value="Add movie" name="addBtn">Add Comic</button>
								</li>
								<li class="list-inline-item">
									<button style="display: <%if(session.getAttribute("ed")==""|| session.getAttribute("ed")==null){out.println("none");}else{out.println("unset");} %>" id="updateBtn" 
									class="btn_add_comic" type="submit" value="Update movie data" name="updateBtn">Edit Comic data</button>
								</li>
								<li class="list-inline-item">
									<button style="display: <%if(session.getAttribute("ed")==""|| session.getAttribute("ed")==null){out.println("none");}else{out.println("unset");} %>
									;background: #ff4457;" id="removeBtn" 
									class="btn_add_comic" type="submit" value="Remove movie" name="deleteBtn">Delete Comic</button>
								</li>
								<li class="list-inline-item">
									<button id="clearBtn" style="display: <%if(session.getAttribute("ed")==""|| session.getAttribute("ed")==null){out.println("unset");}else{out.println("none");} %>
									;background-color: grey; color: white" class="btn_add_comic" type="reset" value="Clear form" name="clearBtn">Clear form</button>
								</li>
								<li class="list-inline-item">
								<a href="<%if(session.getAttribute("ed")==""|| session.getAttribute("ed")==null){out.println("");}else{out.println("edit.jsp?c=1");} %>">
									<button id="cancel"  style="background-color: black; color: white" type="button" class="btn_add_comic" value="Cancel" name="cancel" onclick="">Cancel</button>		
								</a><br/>
						        </li>
							</ul>
						</div>
                                        </form>
                                    </div>
                                </div>         
                            </div>
                        </div>
                    </div>

                    
                </div>
            </div>
        </div>
        </br>
        <footer>
        <nav class="navbar navbar-light bg-light">
		<center>
		<p>IF WEBTOONS &#169; 2022 All Rights Reserved </p>
		</center>
		</nav>
	 </footer>
    </div>
</div>                    
        
		
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
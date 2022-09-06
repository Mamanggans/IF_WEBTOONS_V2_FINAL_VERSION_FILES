<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
	<title>Login Page</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link href="img/iron2.png" rel="shortcut icon"/>
	<link rel="stylesheet" type="text/css" href="login_temp/vendor/bootstrap/css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="login_temp/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
	<link rel="stylesheet" type="text/css" href="login_temp/fonts/iconic/css/material-design-iconic-font.min.css"/>
	<link rel="stylesheet" type="text/css" href="login_temp/vendor/animate/animate.css"/>
	<link rel="stylesheet" type="text/css" href="login_temp/vendor/css-hamburgers/hamburgers.min.css"/>
	<link rel="stylesheet" type="text/css" href="login_temp/vendor/animsition/css/animsition.min.css"/>
	<link rel="stylesheet" type="text/css" href="login_temp/vendor/select2/select2.min.css"/>
	<link rel="stylesheet" type="text/css" href="login_temp/vendor/daterangepicker/daterangepicker.css"/>
	<link rel="stylesheet" type="text/css" href="login_temp/css/util.css"/>
	<link rel="stylesheet" type="text/css" href="login_temp/css/main.css"/>
		<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-auth.js"></script>
</head>
<body>
    <div class="limiter">
        <div class="container-login100" style="background-image: url('images/bg-01.jpg');background-size: cover;">
			<div class="wrap-login100">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-26">welcome admin</span>           
                        <center>
                        	<link class="site-logo" outcome="index">
                        		<img src="images/icon/logo.png"/>
                            </link>
                        </center>
					<span class="login100-form-title p-b-48"></span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
                        <input type="email " id="email" name="email" class="input100" >
                        <span class="focus-input100" data-placeholder="email"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
                        <input  type="password" id="password" name="password"  class="input100">
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>

					
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
						<div class="login100-form-bgbtn"></div>
						<div class="login100-form-btn">
						
						<button onclick="signUp()" id="signUp"  class="login100-form-btn" >sign up</button>
						
					</div>
					</div>
					</div>
						<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
						<div class="login100-form-bgbtn"></div>
						<div class="login100-form-btn">
					<button onclick="signIn()" id="signIn"  class="login100-form-btn" >sign in</button>
					</div>
					</div>
					</div>
					<div class="text-center p-t-115">
						<span class="txt1">
							copyright @
						</span>

						<a class="txt2" href="register.jsp">
							IF Webtoons 2020
						</a><br/>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div id="dropDownSelect1"></div>
	
 
	<script src="login_temp/vendor/jquery/jquery-3.2.1.min.js"></script>
 
	<script src="login_temp/vendor/animsition/js/animsition.min.js"></script>
 
	<script src="login_temp/vendor/bootstrap/js/popper.js"></script>
	<script src="login_temp/vendor/bootstrap/js/bootstrap.min.js"></script>
 
	<script src="login_temp/vendor/select2/select2.min.js"></script>
 
	<script src="login_temp/vendor/daterangepicker/moment.min.js"></script>
	<script src="login_temp/vendor/daterangepicker/daterangepicker.js"></script>
 
	<script src="login_temp/vendor/countdowntime/countdowntime.js"></script>
 
	
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
  
	const auth = firebase.auth();
	
	
	function signUp(){
		
		var email = document.getElementById("email");
		var password = document.getElementById("password");
		
		const promise = auth.createUserWithEmailAndPassword(email.value, password.value);
		promise.catch(e => alert(e.message));
		
		alert("Signed Up");
	}
	
	
	
	function signIn(){
		
		var email = document.getElementById("email");
		var password = document.getElementById("password");
		
		const promise = auth.signInWithEmailAndPassword(email.value, password.value);
		promise.catch(e => alert(e.message));
		
		
		
		
	}
	
	
	function signOut(){
		
		auth.signOut();
		alert("Signed Out");
		
	}
	
	
	
	auth.onAuthStateChanged(function(user){
		
		if(user){
			
			var email = user.email;
			alert("Active User " + email);
			
			//Take user to a different or home page

			//is signed in
			
		}else{
			
			alert("No Active User");
			//no user is signed in
		}
		
		
		
	});

	
    </body>
</html>



    
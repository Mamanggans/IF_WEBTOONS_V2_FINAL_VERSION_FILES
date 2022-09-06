<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
	<title>Login Page</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link href="img/iron2.png" rel="shortcut icon"/>

	<link rel="stylesheet" type="text/css" href="login_temp/css/util.css"/>
	<link rel="stylesheet" type="text/css" href="login_temp/css/main.css"/>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Bowlby+One+SC&display=swap" rel="stylesheet">
</head>
<body>
    <div class="limiter">
        <div class="container-login100" style="background-image: url('img/bg-01.jpg');background-size: cover;">
			<div class="wrap-login100">

					<span class="login100-form-title p-b-26">Welcome To</span>           
                        <center>
                        	<link class="site-logo" outcome="index">
                        		<img src="img/logo1.png"/>
                            </link>
                        </center>
					<span class="login100-form-title p-b-48"></span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
                        <input  type="email" id="email" class="input100" required>
                        <span class="focus-input100" data-placeholder="email"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
                        <input  type="password" id="password" required  class="input100">
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>


					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
						<div class="login100-form-bgbtn"></div>
						<div class="login100-form-btn">
						<button onclick="login()" style="color: white;">LOGIN
					</button>
					</div>
					</div>
					</div>
					

					<div class="text-center p-t-115">
						<span class="txt1">
							Doesn't have account?
						</span>

						<a class="txt2" href="register.jsp">
							<b>Sign Up</b>
						</a><br/>
						<span class="txt1">Click to go back..	 
						</span>
						<a href="index.jsp"><b>Home</b></a> 
					</div>
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
 
	<script src="login_temp/js/main.js"></script>
    </body>
        <!-- The core Firebase JS SDK is always required and must be listed first -->
    <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-app.js"></script>

    <!-- TODO: Add SDKs for Firebase products that you want to use
         https://firebase.google.com/docs/web/setup#available-libraries -->
    <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-auth.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-database.js"></script>

    <!-- Our script must be loaded after firebase references -->
    <script src="js/login_js.js"></script>
    
</html>


    
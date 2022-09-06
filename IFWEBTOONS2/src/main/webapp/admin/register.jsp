<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<head>
	<title>Create A Free Account</title>
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
</head>
<body ng-app="validationApp" ng-controller="mainController">
    <div class="limiter">
        <div class="container-login100" style="background-image: url('img/bg-01.jpg');background-size: cover;">
			<div class="wrap-login100">
				<form name="formregister" class="login100-form validate-form">
					<span class="login100-form-title p-b-26">Register</span>           
                        <!-- <center>
                        	<link class="site-logo" outcome="index">
                        		<img src="img/logo1.png"/>
                            </link>
                        </center> -->
					<!-- <span class="login100-form-title p-b-48"></span> -->

					<div class="wrap-input100 validate-input" data-validate="Enter Username">
                        <input type="text" name="inputusername" required id="inputUsername" class="input100">
						<span class="focus-input100" data-placeholder="Username"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
                        <input type="email" name="inputemail" class="input100" required
                         id="inputEmail">
                        <span class="focus-input100" data-placeholder="Email"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
                        <input type="password" name="inputpassword" required id="inputPassword" class="input100">
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Password doesn't match!">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
                        <input type="password" name="inputpassword2" required id="inputPassword2" class="input100">
						<span class="focus-input100" data-placeholder="Re-enter Password"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
						<div class="login100-form-bgbtn"></div>
						<div class="login100-form-btn">
						<input type="button" class="login100-form-btn" name="register" id="register" value="Register" style="background-color: transparent;" onclick="show()"></div>
					</div>
					</div>

					<div class="text-center p-t-115">
						<span class="txt1">
							Already have an account?
						</span>

						<a class="txt2" href="login.jsp">
							Login
						</a><br/>
						<span class="txt1">want to back to 
						</span>
						<a href="index.jsp">home</a> <!-- class="txt2" value="home" outcome="index"/> -->
					</div>

				</form>
			</div>
		</div>
	</div>

	<div id="dropDownSelect1"></div>


 
	<script LANGUAGE="JavaScript" type="text/javascript">

		function show()
		{
			var uname = document.getElementById("inputUsername").value; 
			var email = document.getElementById("inputEmail").value;
			var pass = document.getElementById("inputPassword").value;
			var passconfirm = document.getElementById("inputPassword2").value;
			if(uname != "" && email != "" && pass != "" && passconfirm == pass) {
				confirm("You have entered:" + "\n Name : " + uname + "\n Email : " + email + "\n\n Do you want to confirm these details ?");
				if (window.confirm('congratulations you have succesfuly created an premium account , click ok to back to login page , click Cancel to change your data for registration ') == true) {
					window.location.href="login.jsp";
				}
				else{
					alert("Please enter valid data!")
				}
			}
			else{
				alert("Please enter valid data!")
			}
		}
		function changeColor(val)
			{ 
			if((val.value=="")||(val.value==null))
			{
			val.style.background="red";
			}
			else
			{
			val.style.background="#FFFFFF";
			}
		}
	</script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>

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
</html>
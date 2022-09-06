<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<head>
	<title>Login Page</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link href="img/iron2.png" rel="shortcut icon"/>
	<link rel="stylesheet" type="text/css" href="login_temp/css/login_main_admin.css"/>
	<link rel="stylesheet" type="text/css" href="login_temp/css/util.css"/>
	<link rel="stylesheet" type="text/css" href="login_temp/css/main.css"/>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
</head>
<body>
    <div class="limiter">
        <div class="container-login100" style="background-image: url('img/bglogadmins.jpg');background-size: cover;">
			<div class="log1">
				<center>
				</br>  
					<i class="tesr" class="left">Welcome the admin of IF webtoons</i>
					</br>
					</center>
					     
                        <center>
                        	<link class="site-logo" outcome="index">
                        		<img src="img/logo1.png"/>
                            </link>
                        </center>

                <div id="form_content_container">
                    <div id="form_content_inner_container">
   <div class="form-group">
    <label for="exampleInputEmail1" class="left">Email address</label>
    <input type="email" class="form-control"  id="email" aria-describedby="emailHelp" placeholder="Enter email">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="password" placeholder="Password">
  </div>
  </br>
                        <div id="text-center button_container">
                            <button onclick="login()" class="btn btn-primary">Login</button>
                        </div>
						</br></br>
                    </div>
                </div>
                					<div class="text-center p-t-115">
						<span class="txt1">Click to go back 	 
						</span>
						<a href="home.html"><b>Main Admin Page</b></a> 
					</div>
            </div>
        </div>

			</div>
		</div>
	</div>


    </body>
        <!-- The core Firebase JS SDK is always required and must be listed first -->
    <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-app.js"></script>

    <!-- TODO: Add SDKs for Firebase products that you want to use
         https://firebase.google.com/docs/web/setup#available-libraries -->
    <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-auth.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-database.js"></script>

    <!-- Our script must be loaded after firebase references -->
    <script src="js/js.js"></script>
</html>
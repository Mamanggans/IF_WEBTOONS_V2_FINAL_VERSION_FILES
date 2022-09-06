<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="img/iron2.png" rel="shortcut icon"/>

    <!-- Title Page-->
    <title>IF Admin</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
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

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">
    
    <!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-app.js"></script>

<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-
database.js"></script>

<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-
firestore.js"></script>

<script src="https://www.gstatic.com/firebasejs/7.13.1/firebase-
storage.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->

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
  firebase.analytics();
</script>

</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="index.html">
                            <img src="images/icon/logo.png" alt="CoolAdmin" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                       <li>
                       <a href="index.jsp">
                       <i class=""></i>Home</a>
                        </li>
                        <li>
                        <li class="active has-sub">
                            <a class="js-arrow" href="#">
                                <i class=""></i>Employee</a>
                        </li>
                        <li>
                            <a href="about.jsp">
                                <i class=""></i>Suggestion Messages</a>
                        </li>
                        <li>
                        <a href="livemessage.jsp">
                                <i class=""></i>Live Message</a>
                        </li>
                        <li>
                            <a href="comicus.jsp">
                                <i class=""></i>COTM</a>
                        </li>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="#">
                    <img src="images/icon/logo.png" alt="Cool Admin" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                       <li>
                       <a href="index.jsp">
                       <i class=""></i>Home</a>
                        </li>
                        <li>
                        <li class="active has-sub">
                            <a class="js-arrow" href="#">
                                <i class=""></i>Employee</a>
                        </li>
                        <li>
                            <a href="about.jsp">
                                <i class=""></i>Suggestion Messages</a>
                        </li>
                        <li>
                        <a href="livemessage.jsp">
                                <i class=""></i>Live Message</a>
                        </li>
                        <li>
                            <a href="comicus.jsp">
                                <i class=""></i>COTM</a>
                        </li>
                </nav>
            </div>
        </aside>


        <!-- END MENU SIDEBAR-->
<div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <form class="form-header" action="" method="POST">
                                <input class="au-input au-input--xl" type="text" name="search" placeholder="Search for datas &amp; reports..." />
                                <button class="au-btn--submit" type="submit">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </form>
                            <div class="header-button">
                                 <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="image">
                                            <img src="images/icon/avatar-01.jpg" alt="John Doe" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">administrator</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="images/icon/avatar-01.png" alt="Admin" />
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">administrator</a>
                                                    </h5>
                                                    <span class="email">IF Webtoons</span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="home.html">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- END HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="overview-wrap">
                                    <h2 class="title-1">Worker</h2>
                                    <button class="au-btn au-btn-icon au-btn--blue" onclick="winOpen()">
                                        <i class="zmdi zmdi-plus"></i>new employee</button>
                                </div>
                                <h1 class="h3 mb-4 text-gray-800">Employee Administration</h1>
										<hr/>
										<form class="user">
											<div class="form-group">
												<input type="text" class="form-control form-control-user" id="uid"
												placeholder="ID" readonly>
											</div>
										<div class="form-group row">
											<div class="col-sm-6 mb-3 mb-sm-0">
												<input type="number" class="form-control form-control-user"
												id="idnum" placeholder="Worker ID Number">
											</div>
											<div class="col-sm-6">
												<input type="text" class="form-control form-control-user"
												id="name" placeholder="Name">
											</div>
											<div class="col-sm-6">
												<input type="text" class="form-control form-control-user"
												id="job" placeholder="Occupation">
											</div>
											<div class="col-sm-6">
												<input type="text" class="form-control form-control-user"
												id="email" placeholder="Email Address">
											</div>
										</div>
								<input type="button" value="Update" onclick="update_user();"
								class="btn btn-warning btn-user" />
								<input type="button" value="Delete" onclick="delete_user();"
								class="btn btn-danger btn-user" />
								<hr>
								</form>
                            </div>
                                <div class="table-responsive table-responsive-data2">
                                    <!-- <table id="tb_workers" class="table table-bordered" width="100%"
									cellspacing="0">
										<tr>
											<td>#ID</td>
											<td>Idnum</td>
											<td>Name</td>
											<td>Job</td>
											<td>Email</td>
										</tr>
									</table> -->
                                    <table id="tb_workers" class="table table-data2">
                                        <thead>
                                            <tr>
                                            	<th>ID</th>
                                                <th>Worker ID</th>
                                                <th>name</th>
                                                <th>as</th>
                                                <th>email</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="tr-shadow">
                                               
                                                <!-- <td>1</td>
                                                <td>
                                                    <span>ferdiansyah</span>
                                                </td>
                                                <td class="desc">frontend</td>
                                                <td>ferdikings</td>
                                                <td>
                                                    <span class="status--process"></span>
                                                </td> -->
                                                <!-- <td>
                                                    <div class="table-data-feature">
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                            <i class="zmdi zmdi-edit"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                                            <i class="zmdi zmdi-delete"></i>
                                                        </button>
                                                    </div>
                                                </td> -->
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END DATA TABLE -->
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p class="copyright">
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | follow us on <a href="https://instagram.com" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a><a href="https://twitter.com" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a><a href="https://youtube.com" target="_blank"><i class="fa fa-youtube" aria-hidden="true"></i></a>
        </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>


    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>
	
    <!-- Main JS-->
    <script src="js/main.js"></script>
    
	<script>
		var tbWork = document.getElementById('tb_workers');
		var databaseRef = firebase.database().ref('employee/');
		var rowIndex = 1;
		databaseRef.once('value', function(snapshot) {
			snapshot.forEach(function(childSnapshot) {
			var childKey = childSnapshot.key;
			var childData = childSnapshot.val();
			var row = tbWork.insertRow(rowIndex);
			var cellId = row.insertCell(0);
			var cellIdnum = row.insertCell(1);
			var cellName = row.insertCell(2);
			var cellJob = row.insertCell(3);
			var cellEmail = row.insertCell(4);
			
			cellId.appendChild(document.createTextNode(childKey));
			cellIdnum.appendChild(document.createTextNode(childData.idnum));
			cellName.appendChild(document.createTextNode(childData.name));
			cellJob.appendChild(document.createTextNode(childData.job));
			cellEmail.appendChild(document.createTextNode(childData.email));
			rowIndex = rowIndex + 1;
			});
			
			var table = document.getElementById("tb_workers");
			var rows = table.getElementsByTagName("tr");
			for (i = 0; i < rows.length; i++) {
			var currentRow = table.rows[i];
			var createClickHandler = function(row) {
			return function() {
			var cell1 = row.getElementsByTagName("td")[0];
			var cell2 = row.getElementsByTagName("td")[1];
			var cell3 = row.getElementsByTagName("td")[2];
			var cell4 = row.getElementsByTagName("td")[3];
			var cell5 = row.getElementsByTagName("td")[4];
			var id = cell1.innerHTML;
			var idnum = cell2.innerHTML;
			var name = cell3.innerHTML;
			var job = cell4.innerHTML;
			var email = cell5.innerHTML;
			document.getElementById('uid').value = id;
			document.getElementById('idnum').value = idnum;
			document.getElementById('name').value = name;
			document.getElementById('job').value = job;
			document.getElementById('email').value = email;
			};
		};
		currentRow.onclick = createClickHandler(currentRow);
		}
		});
		
		function update_user(){
			var idnum = document.getElementById('idnum').value;
			var name = document.getElementById('name').value;
			var job = document.getElementById('job').value;
			var email = document.getElementById('email').value;
			var uid = document.getElementById('uid').value;
			var data = {
			idnum: idnum,
			name: name,
			job: job,
			email: email
			}
			var updates = {};
			updates['/employee/' + uid] = data;
			firebase.database().ref().update(updates);
			alert('employee updated successfully!');
			reload_page();
			}
		
		function delete_user(){
			var uid = document.getElementById('uid').value;
			firebase.database().ref().child('/employee/' + uid).remove();
			alert('workers deleted successfully!');
			reload_page();
		}
	
		function winOpen() {
			window.open("add_employee.jsp",null,
			"height=500,width=700,status=yes,toolbar=no,menubar=no,location=yes");
		};

		function reload_page(){
		window.location.reload();
		}
	</script>
	
</body>

</html>
<!-- end document-->

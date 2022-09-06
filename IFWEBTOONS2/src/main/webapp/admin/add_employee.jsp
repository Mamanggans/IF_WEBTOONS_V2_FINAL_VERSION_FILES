<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-
fit=no">

<meta name="description" content="">
<meta name="author" content="">
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/admin.css" type="text/css"/>
	<link href="img/iron2.png" rel="shortcut icon"/>
<title>Add Employee Data</title>


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

<body id="page-top">
<!-- Page Wrapper -->
<div id="wrapper">
	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">
	<!-- Main Content -->
	<div id="content">
	<!-- Begin Page Content -->
	<div class="container-fluid">
	<!-- Page Heading -->
	<h1 class="h3 mb-4 text-gray-800" style="text-align: center;">Employee</h1>
	</br>
	<form class="user">
		<div class="form-group">
			<input type="number" class="form-control form-control-user" id="idnum"
			placeholder="ID Number">
		</div>
		<div class="form-group">
			<input type="text" class="form-control form-control-user" id="name"
			placeholder="Name">
		</div>
		<div class="form-group">
			<input type="text" class="form-control form-control-user" id="job"
			placeholder="Occupation">
		</div>
		<div class="form-group">
			<input type="text" class="form-control form-control-user" id="email"
			placeholder="Email">
		</div>
		<!-- <br/>
		<a>Upload self-image</a>
		<div class="form-group">
			<input type="file" id="files" name="files" accept="image/png,
			image/jpeg">
		</div> -->
		<input type="button" value="Save" onclick="save_user();" class="btn
		btn-primary btn-user btn-block" />
		<hr>
	</form>
	</div>
	<!-- /.container-fluid -->
	</div>
	<!-- End of Main Content -->
	<!-- Footer -->
	<footer class="footer-section bg-white">
	<div class="container my-auto">
	<div class="copyright text-center my-auto">
	<span>Copyright &copy; Your Website <script>document.write(new Date().getFullYear());</script></span>
	</div>
	</div>
	</footer>
	<!-- End of Footer -->
	</div>
	<!-- End of Content Wrapper -->
</div>
<!-- End of Page Wrapper -->

<script>
function save_user() {
/* const file = document.querySelector('input[type="file"]').files[0];
var storage = firebase.storage();
var pathReference = storage.ref('images/');
var metadata = {

contentType: 'image/jpeg',
};

var uploadTask = pathReference.child(file.name).put(file, metadata);
uploadTask
.then(snapshot => snapshot.ref.getDownloadURL())
.then((url) => {
console.log(url);
document.querySelector('input[type="file"]').src = url;
})
.catch(console.error); */
var idnum = document.getElementById('idnum').value;
var name = document.getElementById('name').value;
var job = document.getElementById('job').value;
var email = document.getElementById('email').value;
/* var foto = file.name; */
var uid = firebase.database().ref().child('employee').push().key;
var data = {
idnum: idnum,
name: name,
job: job,
email: email,
/* foto: foto */
}
var updates = {};
updates['/employee/' + uid] = data;
firebase.database().ref().update(updates);
alert('yeay employee data created successfully!');
}

</script>
</body>
</html>
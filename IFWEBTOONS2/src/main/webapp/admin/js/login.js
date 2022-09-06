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

  function signup() {
	var email = document.getelementById("email")
	var password = document.getelementById("password")
	
	const promise = auth.createUserwithEmailAndPassword(email.value, password.value)
	promise.catch(e => alert (e.message));
	
	alert("signed up" + email.value);
}
  
  function signup() {
		var email = document.getelementById("email")
		var password = document.getelementById("password")
		
		const promise = auth.createUserwithEmailAndPassword(email.value, password.value)
		promise.catch(e => alert (e.message));
		
		alert("signed in" + email.value);
	}
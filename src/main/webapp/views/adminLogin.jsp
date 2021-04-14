<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Admin Login</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>

<body style="background-color:lightgrey;">
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
    <ul class="navbar-nav ">
      <li class="nav-item ">
        <a class="nav-link" href="/home">Home</a>
      </li>

      <li class="nav-item active ">
        <a class="nav-link" href="/adminLoginPage">Admin</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/hrLoginPage">Hr</a>
      </li>

      <li class="nav-item">
        <a class="nav-link " href="/candidateLoginPage">Candidate</a>
      </li>
    </ul>

  </nav>

  
  <div class="text-center wow fadeInDown" align="center">
    <h2>Admin login</h2>
   
    <img src="http://image005.flaticon.com/1/svg/74/74229.svg" alt="user icon" class="logo" height="130px"
      width="120px">

    <form action="/adminLogin" class="needs-validation" method="POST" novalidate>
      <div class="form-fild" align="center">

        <input type="text" class="form-control" id="uname" placeholder="Enter Admin Id" name="user_name"
          style="width: 400px;" required>
        <div class="valid-feedback"></div>
        <div class="invalid-feedback"></div>
      </div>
      
      <div class="form-fild" align="center">

        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password"
          style="width: 400px;" required>
        <div class="valid-feedback"></div>
        <div class="invalid-feedback"></div>
      </div>
   
     
      <button type="submit" class="btn btn-primary">Login</button>
    </form>
  </div>
  
 <script>
		// Disable form submissions if there are invalid fields
		(function() {
			'use strict';
			window
					.addEventListener(
							'load',
							function() {
								// Get the forms we want to add validation styles to
								var forms = document
										.getElementsByClassName('needs-validation');
								// Loop over them and prevent submission
								var validation = Array.prototype.filter
										.call(
												forms,
												function(form) {
													form
															.addEventListener(
																	'submit',
																	function(
																			event) {
																		if (form
																				.checkValidity() === false) {
																			alert('Pleaseupdate the highlighted mandetory filed');
																			event
																					.preventDefault();
																			event
																					.stopPropagation();
																		}
																		form.classList
																				.add('was-validated');
																	}, false);
												});
							}, false);
		})();
		//function for tooltip
		$(document).ready(function() {
			$('[data-toggle="tooltip"]').tooltip();
		});
	</script>

</body>
<!-- Footer -->
<footer class="page-footer font-small blue">

	<!-- Copyright -->
	<div class="footer-copyright text-center py-3">
		© 2020 Copyright: <a href="#"> Cognizant</a>
	</div>
	<!-- Copyright -->

</footer>
<!-- Footer -->

</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Hr Registration</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>

<body style="background-color: lightgrey;">
	<nav
		class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
		<ul class="navbar-nav ">
		
		</ul>



	</nav>

	</br>
	</br>
	<div class="text-center wow fadeInDown" align="center">
		<h2>Add job</h2>
		</br> <img src="http://image005.flaticon.com/1/svg/74/74229.svg"
			alt="user icon" class="logo" height="130px" width="120px">

		<form action="/hrAddJob" class="needs-validation" method="POST" novalidate>
			<div class="form-fild" align="center">
				<label for="fname">Hr Id</label> <input type="text"
					class="form-control" id="fname" placeholder="Enter hr id"
					name="hrid" style="width: 400px;" required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>

			<div class="form-fild" align="center">
				<label for="lname">Required Vacancy</label> <input type="text"
					class="form-control" id="lname" placeholder="NO. of vacancy"
					name="vacanci" style="width: 400px;" required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			<div class="form-fild" align="center">
				<label for="name">Experience</label> <input type="text"
					class="form-control" id="name" placeholder="Experience"
					name="experience" style="width: 400px;" required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			<div class="form-fild" align="center">
				<label for="date">Last date to apply</label> <input type="text"
					class="form-control" id="date" placeholder="Last date"
					name="lastdate" style="width: 400px;" required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			<div class="form-fild" align="center">
				<label for="dom">Domain</label> <input type="text"
					class="form-control" id="dom" placeholder="Domain"
					name="domain" style="width: 400px;" required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			
			<button type="submit" class="btn btn-primary">SUBMIT</button>
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
	
	 <div class="row" style="margin: auto">

				<div class="col" style="background-color: lightgrey; padding: 1em;">

					<a href="/home"><button type="button"
							class="btn btn-secondary btn-lg">Log Out</button></a>

				</div>
			</div>

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
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
       </ul>

  </nav>
  <form action="/InterviewModesAdmin" class="needs-validation" method="POST" novalidate>
      <div class="form-fild" align="center">

        <input type="text" class="form-control" id="vac" placeholder="Enter Vacancy" name="vacancy"
          style="width: 400px;" required>
        <div class="valid-feedback"></div>
        <div class="invalid-feedback"></div>
      </div>
      
      <div class="form-fild" align="center">

        <input type="text" class="form-control" id="exp" placeholder="Enter experience" name="experience"
          style="width: 400px;" required>
        <div class="valid-feedback"></div>
        <div class="invalid-feedback"></div>
      </div>
   
     
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
  
  
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
	</br>
		<div class="row" style="margin: auto">
				
					<a href="/adminLoginPage"><button type="button"
							class="btn btn-primary">Log Out</button></a>
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
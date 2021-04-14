<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Hr Login</title>

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

            <li class="nav-item nav ">
                <a class="nav-link" href="/admin_login_page">Admin</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/hr_logi_page">Hr</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="/candidate_login_page">Candidate</a>
            </li>
        </ul>

    </nav>

    </br></br>
    <div class="text-center wow fadeInDown" align="center">
        <h2>Hr Login</h2>
        </br>
        <img src="http://image005.flaticon.com/1/svg/74/74229.svg" alt="user icon" class="logo" height="130px"
            width="120px">

        <form action="/hr_login" class="needs-validation" method="POST" novalidate>
           <div class="form-fild" align="center">
				<label for="hr_id">HR Id:</label> <a 
					data-toggle="tooltip" data-placement="top"
					title="Faculty Id should be of 3 Digits "> <input type="text"
					class="form-control" id="hr_id" pattern="[0-9]{3}"
					placeholder="Enter HR Id" name="user_name" style="width: 400px;"
					required></a>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
           <div class="form-fild" align="center">
				<label for="password">Password:</label> <a s
					data-toggle="tooltip" data-placement="top"
					title="Password should consist upperCase lowerCase and symbol!">
					<input type="password" class="form-control" id="password"
					
					placeholder="Enter password" name="password" style="width: 400px;"
					required>
				</a>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			
            <p>New User? <a href="/hr_registration_page">Register Here</a></p>
            <button type="submit" class="btn btn-primary">Login</button>
        </form>
    </div>

    <script>
        // Disable form submissions if there are invalid fields
        (function () {
            'use strict';
            window.addEventListener('load', function () {
                // Get the forms we want to add validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function (form) {
                    form.addEventListener('submit', function (event) {
                        if (form.checkValidity() === false) {
                            alert('Please enter User Id and Password');
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
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
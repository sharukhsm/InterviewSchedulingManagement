<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Admin Dashboard</title>

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

<body onload="alert('Succesfully Logged In');" style="background-color: lightgrey;">
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark ">
		<ul class="navbar-nav ">
			<li class="nav-item active"><a class="nav-link" href="/home">Home
					</a></li>

			<li class="nav-item "><a class="nav-link" href="#"></a></li>

		</ul>

	</nav>

	</br>

	<div class="text-center wow fadeInDown" align="center">
		<h2>Welcome to Admin Page</h2>
		</br>
		<div class="container-fluid" style="margin: auto;">

			</hr>
			<div class="row" style="margin: auto">
				<div class="col" style="background-color: lightgrey; padding: 1em;">

					<h2>Hello</h2>

				</div>


			</div>
			<div class="row" style="margin: 30px;">
				<div class="col"
					style="background-color: lightgrey; padding: 3em; border-radius: 25px; border: 3px solid grey;">
					<a href="/adminNotifyPage">
						<H3>Notify Job</H3>
					</a>
				</div>

				<div class="col"
					style="background-color: lightgrey; border-radius: 25px; border: 3px solid grey; padding: 3em;">
					<a href="#">
						<H3>Interview Schedule</H3>
					</a>
				</div>
				<div class="col"
					style="background-color: lightgrey; border-radius: 25px; border: 3px solid grey; padding: 3em;">
					<a href="/modeOfInterviews">
						<H3>Interview mode schedule</H3>
					</a>
				</div>
			</div>
			<div class="row" style="margin: 30px;">
				<div class="col"
					style="background-color: lightgrey; border-radius: 25px; border: 3px solid grey; padding: 3em;">
					<a href="/generateFeedBackReport">
						<H3>Feedback Report</H3>
					</a>
				</div>

				<div class="col"
					style="background-color: lightgrey; border-radius: 25px; border: 3px solid grey; padding: 3em;">
					<a href="/generateInterviewReport">
						<H3>Interview report</H3>
					</a>
				</div>
				<div class="col"
					style="background-color: lightgrey; border-radius: 25px; border: 3px solid grey; padding: 3em;">
					<a href="/sendFeedbackForm">
						<H3>Send Feedback form</H3>
					</a>
				</div>
				
			</div>
			<div class="row" style="margin: auto">

				<div class="col" style="background-color: lightgrey; padding: 1em;">

					<a href="/adminLoginPage"><button type="button"
							class="btn btn-secondary btn-lg">Log Out</button></a>

				</div>
			</div>
		</div>
</body>
<!-- Footer -->
<footer class="page-footer font-small blue">

	<!-- Copyright -->
	<div class="footer-copyright text-center py-3">
		� 2020 Copyright: <a href="#"> Cognizant</a>
	</div>
	<!-- Copyright -->

</footer>
<!-- Footer -->

</html>
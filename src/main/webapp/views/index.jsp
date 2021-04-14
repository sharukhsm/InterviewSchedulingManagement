<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Candidate List</title>
</head>
<body style="background-color: lightgrey;">

	<h3>CANDIDATE LIST</h3>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<th>firstName</th>
			<th>Last name</th>
			<th>Age</th>
			<th>Gender</th>
			<th>Contact</th>
			<th>Id</th>
			<th>ACTION</th>
			<th>ACTION</th>
			
		</tr>
		<c:forEach var="candidate" items="${candidates }">
			<tr>
				<td>${candidate.firstName }</td>
				<td>${candidate.lastName }</td>
				<td>${candidate.age }</td>
				<td>${candidate.gender}</td>
				<td>${candidate.contactNo}</td>
				<td>${candidate.candidateId }</td>
				<td><a type="button" class="btn btn-warning" href="/deleteCandidate" >REJECT</a></td>
				<td><a type="button" class="btn btn-warning" href="/Acceptcandidate">ACCEPT</a></td>
			</tr>
		</c:forEach>
	</table>
	
	 <div class="row" style="margin: auto">

				<div class="col" style="background-color: lightgrey; padding: 1em;">

					<a href="/home"><button type="button"
							class="btn btn-secondary btn-lg">Log Out</button></a>

				</div>
			</div>

</body>
</html>
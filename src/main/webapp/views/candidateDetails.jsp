<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Candidate List</title>
</head>
<body>

	<h3>Products List</h3>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<th>firstName</th>
			<th>Last name</th>
			<th>Age</th>
			<th>Gender</th>
			<th>Contact</th>
			<th>Id</th>
			
		</tr>
		<c:forEach var="candidate" items="${Candidate }">
			<tr>
				<td>${Candidate.firstName }</td>
				<td>${Candidate.lastName }</td>
				<td>${Candidate.age }</td>
				<td>${Candidate.gender}</td>
				<td>${Candidate.contactNo}</td>
				<td>${Candidate.candidateId }</td>
				
			</tr>
		</c:forEach>
	</table>
	
	<a href="/candidate_login_page"><button type="button"
							class="btn btn-secondary btn-lg">Log Out</button></a>

</body>
</html>
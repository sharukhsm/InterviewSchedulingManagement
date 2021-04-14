<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        
        <meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Generated</title>
</head>
    <body style="background-color: lightgrey;">
        <h4>Job Notification</h4>
        <table border="1">
            
                <tr>
                    <th>VACANCI</th>
                    <th>EXPERIENCE</th>
                    <th>INTERVIEW MODE</th>
                    <th>LAST DATE</th>
                    <th>DOMAIN</th>
                </tr>
            
            
                <c:forEach var="feedback" items="${candidates }">
			<tr>
				<td>${feedback.vacanci }</td>
				<td>${feedback.experience }</td>
				<td>${feedback.mode }</td>
				<td>${feedback.lastdate }</td>
				<td>${feedback.domain }</td>
				<td><a type="button" class="btn btn-warning" href="/registerSuccess">Apply FOR JOB</a></td>
				
			</tr>
		</c:forEach>
                
           </table>   
           <a type="button" class="btn btn-warning" href="/candidateRegistrationPage">Non Regester Apply here</a>
          
        
           
               	<div class="row" style="margin: auto">

				<div class="col" style="background-color: lightgrey; padding: 1em;">

					<a href="/adminLoginPage"><button type="button"
							class="btn btn-secondary btn-lg">Log Out</button></a>

				</div>
			</div> 
                    
                     
                    
                
          
    </body>
</html>
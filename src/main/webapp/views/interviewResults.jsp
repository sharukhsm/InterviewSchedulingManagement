<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        
        <meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Generated</title>
</head>
    <body style="background-color: lightgrey;">
        <h4>Result notification</h4>
        <table border="1">
            
                <tr>
                    <th>ID</th>
                    <th>MARKS</th>
                    <th>TIME</th>
                    <th>RESULT</th>
                </tr>
            
            
                <c:forEach var="feedback" items="${interviews }">
			<tr>
				<td>${feedback.requirementId }</td>
				<td>${feedback.marks }</td>
				<td>${feedback.timeOfJoining }</td>
				<td>${feedback.result }</td>
				
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
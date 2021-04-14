<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        
        <meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report generated</title>
</head>
    <body>
        <h4>Excel Generation Demo</h4>
        <table border="1">
            
                <tr>
                    <th>Speed of service</th>
                    <th>Helpfullness</th>
                    <th>Experience</th>
                </tr>
            
            
                <c:forEach var="feedback" items="${linkAppls }">
			<tr>
				<td>${feedback.speedOfService }</td>
				<td>${feedback.helpFullness }</td>
				<td>${feedback.experience }</td>
				
				
			</tr>
		</c:forEach>
                
           </table>     
        
           
                
                    
                        <a href="/download">Export to Excel</a>
                    
                
          
    </body>
</html>
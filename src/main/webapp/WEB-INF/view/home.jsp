<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html>
<html>
<head>
<title>Home Page</title>
</head>

<body>

<h1>Welcome here  - HAAAAAAAAA</h1>
<br>

	<br>
	
	<!-- display user name and role -->
	
	<p>User: <security:authentication property="principal.username"/>
		<br><br>
		Role: <security:authentication property="principal.authorities"/>
	</p>
	
	<security:authorize access="hasRole('MANAGER')">
	<hr>
	<!-- AA a link to point to /leaders this is for menagers -->
	<p>
		<a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
		(Only for Manager)
	</p>
	
	
	<hr>
	
	</security:authorize>
	<!-- AA a link to point to /systems this is for admin -->
	
	<security:authorize access="hasRole('ADMIN')">
	
	<hr>
	<!-- AA a link to point to /leaders this is for menagers -->
	<p>
		<a href="${pageContext.request.contextPath}/systems">The real kings</a>
		(Only for ADMIN)
	</p>
	
	<hr>
	
	</security:authorize>
	
	

	<!-- adding logout button to this page -->
	<form:form method="POST" action="${pageContext.request.contextPath}/logout">
		
		<input type="submit" value="Logout"/>
		
			
	</form:form>
</body>
</html>
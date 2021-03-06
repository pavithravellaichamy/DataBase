<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<style type="text/css">
html { 
  background: url("F:\register4.jpg") no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
table.center{
	font: italic 25px Georgia,serif;
	margin-left:auto;
	margin-right:auto;
	margin-top:auto;
}
table,tr,th{
	font:  Georgia,serif;
}

.error{color:red}  
  
</style>
</head>
<body>
	<br><br><br><br><h1 align="center">TRAVELOGUE ~ Tourist Guide</h1>
	<table class="center">

	 <form:form action="saveUser" method="post" modelAttribute="users">
	 <tr>
		<td>
			<form:label path="username">
				<spring:message text="Enter Username"/>
			</form:label>
		</td>
		<td>
			<form:input path="username"/>
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="name">
				<spring:message text="Enter Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="name" />
			<form:errors path="name" cssClass="error" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="password">
				<spring:message text="Enter Password"/>
			</form:label>
		</td>
		<td>
			<form:input path="password" />
			<form:errors path="password" cssClass="error"/>
		</td> 
	</tr>
		<tr>
		<td>
			<form:label path="reenter_password">
				<spring:message text="Re-enter Password"/>
			</form:label>
		</td>
		<td>
			<form:input path="reenter_password" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="emailid">
				<spring:message text="Enter Emailid"/>
			</form:label>
		</td>
		<td>
			<form:input type="email" path="emailid" />
			<form:errors path="emailid" cssClass="error" />
		</td> 
	</tr>
	<tr>
	<tr>
		<td>
			<form:label path="dob">
				<spring:message text="Enter DOB"/>
			</form:label>
		</td>
		<td>
			<form:input path="dob" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="age">
				<spring:message text="Enter Age"/>
			</form:label>
		</td>
		<td>
			<form:input path="age" />
			<form:errors path="age" cssClass="error"/>
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="city">
				<spring:message text="Enter City"/>
			</form:label>
		</td>
		<td>
			<form:input path="city" />
		</td> 
	</tr>
	<tr>
	<td>Select Interest </td><td><form:select path="interest">
			<form:option value="Hill Stations" label="Hill Stations"/>
			<form:option value="Water Areas" label="Water Areas"/>
			<form:option value="Temples" label="Temples"/>
			<form:option value="Theme Parks" label="Theme Parks"/>
		</form:select></td></br></br>
	</tr>
	<tr align="center">
	<td><input type = "submit" value="submit" name="go to login"/></td>
	</tr>
	</form:form>
	</table>
	</body>
</html>
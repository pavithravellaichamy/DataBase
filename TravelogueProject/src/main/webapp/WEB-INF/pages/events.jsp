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
<title>Insert title here</title>
<style>
body {margin:0;}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
  position: fixed;
  top: 0;
  width: 100%;
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

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 20px 30px;
  text-decoration: none;
  font-
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}
</style>
</head>
<body>
<ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="#news">Events</a></li>
</ul>
 	<br><br><br><br><br><br>
	 <table class="center">
    <form action="saveEvents" method="post">
	 <tr>
		<td>
			User Name
		</td>
		<td>
			<input type="text" name="username" />
		</td> 
	</tr>
	<tr>
		<td>
			Enter Spot
		</td>
		<td>
			<input type="text" name="spot" />
		</td> 
		<td>
			 Enter Rating
		</td>
		<td>
			<input type="text" name="rating"/>
		</td> 
	</tr>
	<tr>
	<td>
	<input type="button" name="submit" value="submit"/>
	</td>
	</tr>
	</form>
	</table>
	
</body>
</html>
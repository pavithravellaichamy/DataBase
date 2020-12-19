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
  <li><a class="active" href="./home">Home</a></li>
  <li><a href="./suggestions">Suggestions</a></li>
  <li><a href="./events">Events</a></li>
  <li style="float:right"><a class="active" href="./upload">Profile</a></li>
   <li style="float:right"><a href="./logout">Logout</a></li>
</ul>
<table>
	<c:forEach var="suggestion" items="${listSuggestion}">
	<tr>
	<td>User Name</td>
	<td>${suggestion.username}</td>
	</tr>
	<tr>
	<td>Image Name</td>
	<td>${suggestion.name}</td>
	</tr>
	<tr>
	<td>Image</td>
	<td><img src="data:image/jpg;base64,${suggestion.base64Image}" width="240" height="200"/></td>
	</tr>
	<tr>
	<td>Spot</td>
	<td>${suggestion.spot}</td>
	</tr>
	<tr>
	<td>Date</td>
	<td>${suggestion.date}</td>
	</tr>
	<tr>
	<td>Review</td>
	<td>${suggestion.review}</td>
	</tr>
	<tr>
	<td>Ratings</td>
	<td>${suggestion.rating}<td></tr>
	</c:forEach>
</table>	

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "Company.*" %>
    <%@	page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
  border: 5px outset yellowgreen;
  border-collapse: collapse;
}
td{
align="center";
}
header {
	height: 60px;
	background: #262626;
	padding: 0 50px;
}

.logo {
	width: 30%;
	float: left;
	color: #fff;
	font-weight: bold;
	text-transform: uppercase;
	line-height: 60px;
	font-size: 35px;
	font-family: sans-serif;
}

nav {
	width: 68%;
	float: right;
}

nav ul {
	list-style: none;
	float: right;
}

nav ul li {
	display: inline-block;
}

nav ul li a {
	text-decoration: none;
	color: #fff;
	font-family: sans-serif;
	font-weight: bold;
	margin: 0 10px;
	line-height: 60px;
	text-transform: uppercase;
}
button {
	background-color: #9F81F7;
	width:5%;
	color: white;
	padding: 15px;
	margin: 10px 0px;
	border: none;
	cursor: pointer;
}
</style>
</head>
<body>
<%
Company_DAO dao=new Company_DAO();
List<Company_pojo> q=dao.company_display();
%>
<header>
		<div class="logo">Arts & Science</div>
		<nav>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="about.html">About</a></li>
				<li><a href="contact.html">Contact</a></li>
				<li><a href="logout">Logout</a></li>
			</ul>
		</nav>
	</header>
<br><br><br><br>
<h1 align="center"> COMPANY DETAILS</h1>
<table align="center"  style="width:35%">
<tr>
<th>ID</th>
<th>NAME</th>
<th>REQUIRMENTS</th>
<th>DESCRIPTION</th>

</tr>
<% for(Company_pojo e:q) {%>
<tr>
<td align="center"><%=e.getCid()%></td>
<td align="center"><%=e.getName()%></td>
<td align="center"><%=e.getRequirments()%></td>
<td align="center"><%=e.getDescription()%></td>

</tr> 
<% } %>
</table>
<p><br>
</p>
<button type="submit" style='position: relative; left: 700px;'onclick="document.location='company.html'">Back</button>
</body>
</html>
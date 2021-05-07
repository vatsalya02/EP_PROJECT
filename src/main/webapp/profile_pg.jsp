<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "pg.*" %>
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
  padding:10px;
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
</style>
</head>
<body>
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
<%
String email=(String) request.getAttribute("email");
	PG_DAO dao=new PG_DAO();
	PG_Pojo q =dao.pg_profile(email);	
%>
<table align="center"  style="width:35%">
<tr>
<th>ID</th>
<td><%=q.getRegno() %></td>
</tr>
<tr>
<th>Name</th>
<td><%=q.getName() %></td>
</tr>
<tr>
<th>Email Id</th>
<td><%=q.getEmail() %></td>
</tr>
<tr>
<th>Year</th>
<td><%=q.getYear() %></td>
</tr>
<tr>
<th>Gender</th>
<td><%=q.getGender() %></td>
</tr>
<tr>
<th>Department</th>
<td><%=q.getDepartment() %></td>
</tr>
<tr>
<th>Address</th>
<td><%=q.getAddress() %></td>
</tr>
<tr>
<th>10th Deatils</th>
<td>Board:<%=q.getTboard()%><br>Year of Passing:<%=q.getTyear()%><br>Percentage:<%=q.getTper() %></td>
</tr>
<tr>
<th>Inter details</th>
<td>Board:<%=q.getIboard()%><br>Year of Passing:<%=q.getIyear()%><br>Percentage:<%=q.getIper() %></td>
</tr>
<tr>
<th>Btech year of passing</th>
<td><%=q.getByear() %></td>
</tr>
<tr>
<th>Btech Cgpa</th>
<td><%=q.getBper() %></td>
</tr>
</table>
</body>
</html>
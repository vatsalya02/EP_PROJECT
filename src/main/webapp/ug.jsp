<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "ug.*" %>
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
	DAO dao=new DAO();
	List<UG_Pojo> q =dao.display();	
%>
<br><br><br><br>
<h1 align="center"> UG STUDENT DETAILS</h1>
<table align="center"  style="width:30%">
<tr>
<th>ID</th>
<th>NAME</th>
<th>EDIT</th>
</tr>
<% for(UG_Pojo e:q) {%>
<tr>
<td align="center"><%=e.getRegno()%></td>
<td align="center"><%=e.getName()%></td>
<td align="center"><a href="ugupdate.jsp?regno=<%=e.getRegno()%>">EDIT</a></td>
</tr> 
<% } %>
</table>
</body>
</html>
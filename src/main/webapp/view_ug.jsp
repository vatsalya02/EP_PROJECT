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
td{
align="center";
width:"50%";
padding:10px;
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
DAO dao=new DAO();
List<UG_Pojo> q=dao.display();
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
<h1 align="center"> UG STUDENT DETAILS</h1>
<table align="center"  style="width:50%">
<tr>
<th>ID</th>
<th>NAME</th>
<th>EMAIl</th>
<th>YEAR</th>
<th>DEPARTMENT</th>
<th>ADDRESS</th>
<th>GENDER</th>
<th>MOBILE NO</th>
<th>10th Details</th>
<th>Intermidiate Details</th>
<th>Backlogs</th>
<th>Placement Status</th>
</tr>
<% for(UG_Pojo e:q) {%>
<tr>
<td align="center"><%=e.getRegno()%></td>
<td align="center"><%=e.getName()%></td>
<td align="center"><%=e.getEmail()%></td>
<td align="center"><%=e.getYear()%></td>
<td align="center"><%=e.getDepartment()%></td>
<td align="center"><%=e.getAddress()%></td>
<td align="center"><%=e.getGender()%></td>
<td align="center"><%=e.getPhone_no()%></td>
<td align="center">Board:<%=e.getTboard()%><br>Year of Passing:<%=e.getTyear()%><br>Percentage:<%=e.getTper() %></td>
<td align="center">Board:<%=e.getIboard()%><br>Year of Passing:<%=e.getIyear()%><br>Percentage:<%=e.getIper() %></td>
<td align="center"><%=e.getBacklogs()%></td>
<td align="center"><%=e.getPlaced()%></td>

</tr> 
<% } %>
</table>
<p><br>
</p>
<button type="submit" style='position: relative; left: 700px;'onclick="document.location='ugindex_project.html'">Back</button>
</body>
</html>
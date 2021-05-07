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
body{
background-color: #E0F8F7;
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
String cname=request.getParameter("cname");
float cgpa=Float.parseFloat(request.getParameter("cgpa"));
DAO dao=new DAO();
List <UG_Pojo> q=dao.ug_check(cgpa);
%>

<h1 align="center"> COMPANY PG STUDENT DETAILS</h1>
<h2 align="center">COMPANY NAME:<%=cname%></h2>
<table align="center"  style="width:25%">
<tr>
<th>ID</th>
<th>NAME</th>
<th>EMAIL</th>
<th>CGPA</th>
<th>STATUS</th>
</tr>
<% for(UG_Pojo e:q) {%>
<tr>
<td align="center"><%=e.getRegno()%></td>
<td align="center"><%=e.getName()%></td>
<td align="center"><%=e.getEmail() %></td>
<td align="center"><%=e.getCgpa() %></td>
<td align='center'>Eligible</td>
</tr> 
<% } %>
</table>
<br><br><br><br><br><br><br>
<button type="submit" style='position: relative; left: 700px;'onclick="document.location='report.html'">Back</button>
</body>
</html>
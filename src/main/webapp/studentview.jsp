<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    
pageEncoding="ISO-8859-1"%>
    <%@ page import= "Company.*" %>
   
 <%@	page import="java.util.List" %>

<!DOCTYPE html>

<html>

<head>
  <script>
  function showAlert() {
    alert ("Application sucessful!");
  }
  </script>
<meta charset="ISO-8859-1">

<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
body{
background-color: #CEF6F5;
  
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

.column {
  float: center;
  width: 30%;
  padding: 10px 10px;
  margin-right:auto;
  margin-left:auto;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
  margin-right:auto;
  margin-left:auto;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 30%;
    display: block;
    margin-bottom: 20px;
    margin-right:auto;
  margin-left:auto;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 20px;
  text-align: center;
  background-color: white;
  margin-right:auto;
  margin-left:auto;
}
button {
	
background-color: black;
	
width: 100%;

color: white;

padding: 15px;
	
margin: 10px 0px;
	
border: none;

cursor: pointer;

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
	Company_DAO dao=new Company_DAO();

	List<Company_pojo> q =dao.company_display();
	
%>
<br><br><br><br>

<h1 align="center"> COMPANY DETAILS</h1>

<% 
for(Company_pojo e:q) 
{
%>
 

<div class="row">
<div class="column">

<div class="card"> 
  
 <h1><%=e.getName()%></h1> 
  
<img src="https://images.unsplash.com/photo-1520607162513-77705c0f0d4a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVzaW5lc3N8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60" alt="Avatar" style="width:80%">

    <p>REQUIRMENTS OF COMPANY:<%=e.getRequirments()%>
</p> 
 
   <p>DETAILS:<%=e.getDescription()%></p> 

    <button type="submit" onclick="showAlert()">Apply</button>

  </div>

</div>
</div>
<%} %>
</body>

</html>
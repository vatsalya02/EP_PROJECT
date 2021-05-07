<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "ug.*" %>
      <%@ page import= "pg.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String email=(String)request.getAttribute("email");
PG_DAO dao=new PG_DAO();
DAO dao1=new DAO();
if(dao.checkall(email)){
	  RequestDispatcher rd=request.getRequestDispatcher("profile_pg.jsp");
	  request.setAttribute("email",email); 
	  rd.forward(request, response);
}
else if(dao1.checkall(email)){
	RequestDispatcher rd1=request.getRequestDispatcher("profile_ug.jsp");
	  request.setAttribute("email",email); 
	  rd1.forward(request, response);
}
else{
	out.println("<p style=\"text-align:center\"><font size=\"5\" color=\"white\">Your details are not been updated by admin</p>");
	request.getRequestDispatcher("studentindex.html").include(request,response);
}
%>

</body>
</html>
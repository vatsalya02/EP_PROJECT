<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "pg.*" %>
    <%@	page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<title>PG UPDATE FORM</title>
<script>
function ug()
{
var regno=document.f3.regno.value;
var name=document.f3.name.value;
var email=document.f3.email.value;
var dep=document.f3.dep.value;
var year=document.f3.year.value;
var add=document.f3.add.value;
var tboard=document.f3.tboard.value;
var tper=document.f3.tper.value;
var tyear=document.f3.tyear.value;
var iboard=document.f3.iboard.value;
var iper=document.f3.iper.value;
var iyear=document.f3.iyear.value;
var phno=document.f3.phno.value;
var back=document.f3.back.value;
var gender=document.f3.gender.value;
var per=document.f3.per.value;
var pass=document.f3.pass.value
var at = parseInt(email.indexOf('@'));
var dot = parseInt(email.lastIndexOf('.'));
if(at==-1 || dot==-1)
alert("Enter valid email");
else if(dot > at && email[dot+2]!=null)
alert("Welcome");
else
alert("invalid email");
if(regno==null||regno=="")
{
alert("Enter the registration number");
}
if(name==null||name=="")
{
alert("Enter the name");
}
if(dep==null||dep=="")
{
alert("Enter the department");
}
if(year==null||year=="")
{
alert("Enter the year");
}
if(tboard==null||tboard==""){
	alert("Enter Your Tenth Board")
}
if(tper==null||tper==""){
	alert("Enter Your Tenth Percentage")
}
if(tyear==null||tyear==""){
	alert("Enter Your Tenth Pass out year")
}
if(iboard==null||iboard==""){
	alert("Enter Your Intermidiate Board")
}
if(iper==null||iper==""){
	alert("Enter Your Intermidiate Percentage")
}
if(iyear==null||iyear==""){
	alert("Enter Your Intermidiate Pass out year")
}
if(add==null||add=="")
{
alert("Fill the address field")
}
if(phno==null||phno=="")
{
alert("Enter your phone number")
}
if(per==null||per=="")
{
alert("Enter your percentage")
}
if(back==null||back=="")
{
alert("Enter your backlogs")
}
if(pass==null||pass=="")
{
alert("Enter the year of passing")
}
ErrorText= "";
if ( ( form.gender[0].checked == false ) && ( form.gender[1].checked == false ) )
{
alert ( "Please choose your Gender: Male or Female" );
return false;
}
if (ErrorText= "") { form.submit() }
}
</script>
</head>
<style>
body {
	background-image:
		url("https://gennet.com/wp-content/uploads/2016/09/home-page-CTA-background-General-Networks-update.jpg");
	background-repeat: no-repeat;
	background-size: 100%;
}

form {
	width: 43%;
	margin: 50px auto;
	background: white;
	padding: 10px 10px 10px 10px;
}

input[type=text], input[type=email], input[type=password], input[type=number]
	{
	width: 80%;
	margin: 5px 0;
	padding: 10px 20px;
	display: inline-block;
	border: 2px solid black;
	box-sizing: border-box;
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
<body>
<%
String id = (request.getParameter("regno"));	
PG_Pojo u=PG_DAO.pg_getRecordById(Integer.parseInt(id));
%>
	<center>
		<form method="post" name="f3" onsubmit="ug()" action="pgupdate">
			<h2>
				<u>PG UPDATE FORM </u>
			</h2>
			<table bgcolor="white">
				<tr>
					<td>REG NO:</td>
					<td><input type="text" name="regno" placeholder="Enter Regno" value=<%=u.getRegno()%>></td>
				<tr>
					<td>NAME:</td>
					<td><input type="text" name="name" placeholder="Enter Name" value=<%=u.getName()%>></td>
				</tr>
				<tr>
					<td>EMAIL ID:</td>
					<td><input type="email" name="email"
						placeholder="Enter Email Id" value=<%=u.getEmail()%>></td>
				</tr>
				<td>GENDER:</td>
				<td><input type="radio" name="gender" value="male">Male
					<input type="radio" name="gender" value="Female">Female</td>
				</tr>
				<tr>
					<td>DEPARTMENT:</td>
					<td><input type="text" name="dep"
						placeholder="Enter Department" value=<%=u.getDepartment()%>></td>
				</tr>
				<tr>
					<td>YEAR:</td>
					<td><input type="text" name="year" placeholder="Enter Year" value=<%=u.getYear()%>></td>
				</tr>
				<tr>
					<td>ADDRESS:</td>
					<td><textarea cols="53" rows="4" name="add" placeholder="Enter Address"><%=u.getAddress()%></textarea></td>
				</tr>
				<td>PH NO:</td>
				<td><input type="text" name="phno" placeholder="Enter Ph No" value=<%=u.getPhone_no()%>></td>
				</tr>
				<tr>
					<td>QUALIFICATION:</td>
					<td>
						<table border="2">
							<tr>
								<th>SL.NO</th>
								<th>Examination</th>
								<th>Board</th>
								<th>Percentage</th>
								<th>Year of Passing</th>
							</tr>
							<tr>
							<td>1</td>
							<td>Class X</td>
							<td><input type="text" name="tboard" value=<%=u.getTboard()%>></td>
							<td><input type="text" name="tper" value=<%=u.getTper()%>></td>
							<td><input type="text" name="tyear" value=<%=u.getTyear()%>></td>
						</tr>
							<tr>
							<td>2</td>
							<td>ClassXII</td>
							<td><input type="text" name="iboard" value=<%=u.getIboard()%>></td>
							<td><input type="text" name="iper" value=<%=u.getIper()%>></td>
							<td><input type="text" name="iyear" value=<%=u.getIyear()%>></td>
						</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>PERCENTAGE IN B.TECH:</td>
					<td><input type="text" name="per"
						placeholder="Enter percentage" value=<%=u.getBper()%> ></td>
				</tr>
				<tr>
					<td>YEAR OF PASSING:</td>
					<td><input type="text" name="pass" placeholder="Enter year" value=<%=u.getByear()%>></td>
				</tr>
			</table>
			</td>
			</tr>
			</table>
			<br>
			<div>
				<input type="submit" value="submit">
			</div>
		</form>
</body>
</html>
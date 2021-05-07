<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import= "ug.*" %>
        <%@	page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<title>UG REGISTRATION FORM</title>
<script>
function ug()
{
var regno=document.f3.regno.value;
var name=document.f3.name.value;
var email = document.f3.email.value;
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
var cgpa=document.f3.cgpa.value;
var symbol = email.indexOf('@');
var dot = email.lastIndexOf('.');
var len = email.length;

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
if(add==null||add=="")
{
alert("Fill the address field")
}
if(phno==null||phno=="")
{
alert("Enter your phone number")
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
if(cgpa==null||cgpa=="")
{
alert("Enter your cgpa")
}
if(back==null||back=="")
{
alert("Enter your backlogs")
}
ErrorText= "";
if ( ( form.gender[0].checked == false ) && ( form.gender[1].checked == false ) )
{
alert ( "Please choose your Gender: Male or Female" );
return false;
}
if(email==""||email==null){
	alert("Email must be filled");
	return false;
}
if (email.length < 8) {
	alert("Email must be min 8 characters");
	return false;
}

if (symbol == -1 && dot == -1) {
	alert("Enter Valid EmailID");
	return false;
} else if ((parseInt(dot) - parseInt(symbol)) == 1) {
	alert("Enter Valid EmailID");
	return false;
} else if ((parseInt(len) - parseInt(dot) - 1) < 2) {
	alert("Enter Valid EmailID");
	return false;
}
if (ErrorText= "") { form.submit() }
}
</script>
</head>
<style>
body {
	background-image:
		url("https://companies.naukri.com/rms-careers/wp-content/uploads/sites/21747/2017/11/Recruitment-key-on-keyboard-.jpg");
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
UG_Pojo u=DAO.getRecordById(Integer.parseInt(id));
%>
<center>
	<form method="post" name="f3" onsubmit="ug()" action="ugupdate">
		<h2>
			<u>UG UPDATE FORM</u>
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
			<td><input type="radio" name="gender" value="male" value=<%=u.getGender()%>>Male
				<input type="radio" name="gender" value="Female" value=<%=u.getGender()%>>Female</td>
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
				<td><textarea cols="53" rows="4" name="add"  placeholder="Enter Address"><%=u.getAddress()%></textarea></td>
			</tr>
			<td>PH NO:</td>
			<td><input type="number" name="phno" placeholder="Enter Ph No" value=<%=u.getPhone_no()%>></td>
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
			<td>COURSES APPLIED:</td>
			<td><input type="radio" name="course" value="B.Tech " value=<%=u.getCourse()%>>B.Tech <input
				type="radio" name="course" value="B.Com" value=<%=u.getCourse()%>>B.Com <input type="radio"
				name="course" value="B.Sc">B.Sc <input type="radio" name="course" value="BCA" value=<%=u.getCourse()%>>BCA</td>
			</tr>
			<tr>
				<td>CGPA:</td>
				<td><input type="text" name="cgpa" placeholder="Enter cgpa" value=<%=u.getCgpa()%>></td>
			</tr>
			<tr>
				<td>BACKLOGS:</td>
				<td><input type="number" name="back"
					placeholder="Enter Backlogs" value=<%=u.getBacklogs()%>></td>
			</tr>
			<td>PLACED:</td>
			<td><input type="radio" name="place" value="Yes" value=<%=u.getPlaced()%>>Yes <input
				type="radio" name="place" value="No" value=<%=u.getPlaced()%>>No</td>
			</tr>
		</table>
		<br>
		<div>
			<input type="submit" value="UPDATE">
		</div>
	</form>
	</body>
</html>

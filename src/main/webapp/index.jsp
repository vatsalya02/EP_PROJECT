<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home</title>
	<style>
* {
  box-sizing: border-box;
}

body {
  font-family: "Roboto",Helvetica,Arial,sans-serif;
}

/* Float four columns side by side */
.column {
  float:left;
  width: 33%;
  padding: 50px 100px;
  font-size:15px;
font-weight:400
line height:27px;
}

/* Remove extra left and right margins, due to padding in columns */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the "card" effect */
  padding: 50px;
  text-align: center;
  background-color: #80bfff;
}

/* Responsive columns - one column layout (vertical) on small screens */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}
	*{
	margin:0;
	padding:0;
	}
	header{
	height:60px;
	background:#262626;
	padding:0 50px;
	}
	.logo{
	width:30%;
	float:left;
	color:#fff;
	font-weight:bold;
	text-transform:uppercase;
	line-height:60px;
	font-size:35px;
	font-family:sans-serif;
	}
	nav{
	width:68%;
	float:right;
	}
	nav ul{
	list-style:none;
	float:right;
	}
	nav ul li{
	display: inline-block;
	}
	nav ul li a{
	text-decoration: none;
	color:#fff;
	font-family:sans-serif;
	font-weight:bold;
	margin:0 10px;
	line-height:60px;
	text-transform:uppercase;
	}
	.banner{
	height:100%;
	}
	.banner img{
	width:100%;
	height:90vh;
	}
	.content{
	padding:5%;
	}
	.content p{
	font-size:18px;
	line-height:1.7;
	font-family:sans-serif;
	margin-bottom:25px;
	}
	footer{
	background:#000;
	color:#fff;
	padding:15px 50px;
	text-align:center;
	}
	   
	   
	   @media (max-width: 600px){        

	header {
	 width: 100%;
	 height: 100%;
	 padding: 0;
	 text-align: center;
	}
	.logo {
	 width: 100%;
	 float: none;
	}
	nav {
	 width: 100%;
	 float: none;
	}
	nav ul li {
	 display: block;
	}
	nav ul {
	 float: none;
	}
	</style>
</head>
<body>
	<header>
		<div class="logo">
			Arts & Science
		</div>
		<nav>
			<ul>
				<li>
					<a href="index.jsp">Home</a>
				</li>
				<li>
					<a href="about.html">About</a>
				</li>
				<li>
					<a href="login_project.html">Login</a>
				</li>
				<li>
					<a href="register_project.html">Register</a>
				</li>
				<li>
					<a href="contact.html">Contact</a>
				</li>
			</ul>
		</nav>
	</header>
	<div class="banner"><img alt="" src="https://companies.naukri.com/rms-careers/wp-content/uploads/sites/21747/2017/11/Recruitment-key-on-keyboard-.jpg"></div>
	
<div class="row">
  <div class="column">
    <div class="card">
      <h3>Students</h3>
      <p style="color:white">Enable students to create job profiles, upload resumes, search and apply for jobs and internships with real-time status tracking from anywhere and anytime.</p>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <h3>Colleges</h3>
      <p style="color:white">Capture data and reports related to students and employers which can be accessed by administrators with a single click in a safe and secure environment.</p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3>Companies</h3>
      <p style="color:white">Easily screen the students for exact requirements and get access to entire student database, experience the real-time jobs or internships wher ever you are.</p>
    </div>
  </div>
</div>

	<footer>
		<p>All Right Reserved By Your Website</p>
	</footer>
</body>
</html>
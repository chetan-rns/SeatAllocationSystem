<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="sessionpackage.*" import="java.util.*" import="java.io.*"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CollegePredictor</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet" type="text/css">
</head>
<style>
	body {
   		background-color : rgba(0, 0, 0, 0.32);;
   		margin: 0;
   		padding: 0;
	}
	h1 {
    	color : #DC143C;
    	font-size:50px;
    	text-align : center;
   		font-family: "SIMPSON";
	}
	h2 {
    	color : #DC143C;
    	font-size:25px;
    	text-align : center;
    	font-family: "SIMPSON";	
	}
	form {
    	width: 300px;
    	margin: 0 auto;
	}
	.topnav {
  		overflow: hidden;
  		background-color: rgb(118, 171, 219); <!-- #333-->
	}
	.topnav a {
  		float: left;
  		display: block;
  		color: #f2f2f2;
  		text-align: center;
  		padding: 14px 16px;
  		text-decoration: none;
  		font-size: 17px;
	}
	.topnav a:hover {
  		background-color: #ddd;
  		color: black;
	}
	.topnav a.active {
    	background-color: #4CAF50;
    	color: white;
	}
	li{
		align:center;
	}
</style>
<body>
<div class="topnav">
  <!--<a class="active" href="#home">Home</a>-->
  <a href="StartingPage.html">Back</a>
  <a href="Login2.jsp">Enter Counselling</a>
</div>
<h1>College Predictor</h1><br>
<h2>Enter your rank</h2>
<br>
<br>
<div align="center">
<form action="CollegePredictorServlet" method="post">
	 <!--Rank:<input type="text" name="rno">-->
	<script>
		function isNumberKey(evt){
	    	var charCode = (evt.which) ? evt.which : event.keyCode
	    	if (charCode > 31 && (charCode < 48 || charCode > 57))
	        	return false;
	    	return true;
		}
	</script>
	<input name="rno" type="text" onkeypress="return isNumberKey(event)"/><br><br>
	<button type="submit" name="submit">CHECK</button>
</form>
</div>
<br>
<br>
<%!
int size;
boolean check=false;
%>
<%
	//size=(int)session.getAttribute("size");
	//check=(boolean)session.getAttribute("check");
	if(session.getAttribute("colleges")!=null && session.getAttribute("size")!=null && session.getAttribute("check")!=null){
		size=(int)session.getAttribute("size");
		check=(boolean)session.getAttribute("check");
		String college[]=new String[size];
		college=(String[])session.getAttribute("colleges");
		out.println("<h2>Colleges:</h2>"+"<br>");
		for(int i=0;i<college.length;i++){
			if(college[i]!=null)
				out.println("<h2>"+college[i]+"</h2>"+"<br>");
		}
			
	}
	check=false;
%>
</body>
</html>





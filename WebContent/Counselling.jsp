<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="sessionpackage.*"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Counselling</title>
</head>
<style>
	body {
   		background-color : rgba(0, 0, 0, 0.32);;
   		margin: 0;
   		padding: 0;
	}
	h1 {
    	/*color : #DC143C;*/
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
	#userbox {
    	position: absolute;
    	width: 710px;
    	height: 50px;
    	background: white;
    	top: 60%;
    	margin-top: -174px;
   	 	left: 20%;
    	margin-left: -240px;
    	box-shadow: 0px 1px 16px rgba(0, 0, 0, 0.45);
	}
	button{
		width:100px;
		font-size:15px;
	}
	select{
		width:500px;
		font-size:15px;
	}
	h3{
		align:right;
	}
</style>
<body>
<%!
	String register_no;
	Statement st;
	Connection con;
	String name;
%>
<%
//User user=(User)session.getAttribute("user");
register_no=(String)session.getAttribute("user");
con=(Connection)session.getAttribute("connection");
%>
<% 
name=Details.getName(register_no);
%> 
<div class="topnav">
  <!--<a class="active" href="#home">Home</a>-->
  <a href="Success.jsp">Back</a>
  <a href="CollegePredictor.jsp">College Predictor</a>
  <a href="Counselling.jsp">Enter Counselling</a>
  <a href="#signed in" style="align:right">Signed in as <%out.print(name);%></a> 
</div>
<h1 align="center">Enter your preferences</h1>
<br>
<form action="Counselling.jsp"><!-- action="preferences" method="post">-->
<div id="userbox">
	<select name="college">
		<option selected="selected">----------------------------------------------------------------------------------------------</option>
  		<option value="iitb">Indian Institute of Technology,Bombay</option>
  		<option value="iitd">Indian Institute of Technology,Delhi</option>
  		<option value="iitm">Indian Institute of Technology,Madras</option>
  		<option value="iitk">Indian Institute of Technology,Kanpur</option>
  		<option value="iitkgp">Indian Institute of Technology,Kharagpur</option>
  		<option value="iitk">Indian Institute of Technology,Kanpur</option>
  		<option value="iitg">Indian Institute of Technology,Gandhinagar</option>
  		<option value="iitdsm">Indian Institute of Technology,Dhanbad</option>
	</select>
	<button name="add" type="submit">Add</button>
</div>
</form>
<%
		String pre=request.getParameter("college");
		if(pre!=null && !pre.equals(" ")){
			out.println("<h3>"+pre+"</h3>"+"<br>");
		}
		pre=" ";
	%>
</body>
</html>




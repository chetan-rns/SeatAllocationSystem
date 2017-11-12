<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="sessionpackage.*"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Marks</title>
</head>
<style>
	body {
   		background-color : rgba(0, 0, 0, 0.32);;
   		margin: 0;
   		padding: 0;
	}
	#signupb {       /*Use this style for submit button*/
    	background: #f8f8f8;
    	border: 1px solid #c6c6c6;
    	display: inline-block;
    	line-height: 23px;
    	padding: 5px 18px;
    	-webkit-border-radius: 2px;
    	border-radius: 2px;
    	background: #f37676;
    	border-color: #E78282;
    	font-weight: normal;
    	margin: 10px 0 0 0;
    	color: #fff;
    	position: absolute;
    	right: 200px;
    	bottom: 20px;
    	font-size: 17px;
    	width: 103px;
    	height: 35px;
    	outline: none;
    	cursor: pointer;
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
    	width: 600px;
    	height: 220px;
    	background: white;
    	top: 60%;
    	margin-top: -174px;
   	 	left: 45%;
    	margin-left: -240px;
    	box-shadow: 0px 1px 16px rgba(0, 0, 0, 0.45);
	}
	#inner{
		color : #DC143C;
    	font-size:25px;
    	font-family: "SIMPSON";
	
	}
	table {
    	border-collapse: collapse;
    	width: 100%;
	}

	th, td {
    	text-align: left;
    	padding: 8px;
	}

	tr:nth-child(even){background-color: #f2f2f2}

	th {
    	background-color: rgb(118, 171, 219);
    	color: white;
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
  <a href="#signed in" style="align:right">Signed in as <%out.print(name);%></a> 
</div>
<div id="userbox">
<div align="center">
<div>
    <table class="table table-bordered"> 
    <thead>																																										
			<tr style="color:black;">
			<th style="text-align:center;">Subject Code</th>
			<th style="text-align:center;">Subject Name</th>
			<th style="text-align:center;">Internal Marks</th>
			<th style="text-align:center;">External Marks</th>
			<th style="text-align:center;">Total</th>
			<th style="text-align:center;">Result</th>
		</tr>																
	</thead>
	<tbody>																																											
		<tr>
			<td style="text-align:left;">15MAT41</td>
			<td style="text-align:left;">PHYSICS</td>
			<td style="text-align:center;">18</td>																																													
			<td style="text-align:center;">60</td>
			<td style="text-align:center;">P</td>	
		</tr>
	</tbody>																																										
		<tr>
			<td style="text-align:left;">15CS42</td>
			<td style="text-align:left;">CHEMISTRY</td>
			<td style="text-align:center;">20</td>
			<td style="text-align:center;">56</td>
			<td style="text-align:center;">P</td>	
		</tr>
	</tbody>
	<tbody>																																										
		<tr>
			<td style="text-align:left;">15CS43</td>
			<td style="text-align:left;">MATHEMATICS</td>
			<td style="text-align:center;">20</td>																																																																	
			<td style="text-align:center;">74</td>
			<td style="text-align:center;">P</td>	
		</tr>
	</tbody>
	<tbody>
		<tr>
			<td style="text-align:left;">15CSL48</td>
        	<td style="text-align:left;">Biology</td>
			<td style="text-align:center;">20</td>																																														
			<td style="text-align:center;">98</td>
			<td style="text-align:center;">P</td>	
		</tr>
	</tbody>																																																														
	</table>
	<br>
</div>
</div>
<br>
<button id="signupb" style="opacity: 20;align:center;" type="submit" onclick="myFunction()">Print</button>
</div>
<script>
function myFunction() {
    window.print();
}
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="sessionpackage.*"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>LoggedIn</title>
</head>
<body>
<%!
	String register_no;
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
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="StartingPage2.html">Home</a></li>
      <li><a href="#">Result</a></li>
      <li><a href="#">Preferences</a></li>
      <li><a href="#">Allocation</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li class="active"><a href="#"><span class="glyphicon glyphicon-user"></span><%=name=Details.getName(register_no)%></a></li>
      <li ><a href="StartingPage2.html">Log Out</a></li>
    </ul>
  </div>
</nav>
</nav>
<div class="container-fluid bg-info">
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-6">
            <h1>Join Seat Alloaction System</h1>
        </div>
        <div class="col-sm-2"></div>
    </div>
</div>
<br>
<br>
<div class="row">
    <div class="col-sm-4"></div>
    <div class="col-sm-4">
<table class="table table-striped">
   <tr>
       <th>Name</th>
       <td><%=name=Details.getName(register_no)%></td>
   </tr>
   <tr>
       <th>Reg No</th>
       <td><%=register_no %></td>
   </tr>
   <tr>
       <th>Father</th>
       <td><%=Details.getFather(register_no) %></td>
   </tr>
   <tr>
       <th>Email</th>
       <td><%=Details.getEmailid(register_no) %></td>
   </tr>
   <tr>
       <th>Date of Birth</th>
       <td><%=Details.getDOB(register_no) %></td>
   </tr>
   <tr>
       <th>Category</th>
       <td><%=Details.getCategory(register_no) %></td>
   </tr>
   <tr>
       <th>Rank</th>
       <td><%=Details.getRank(register_no) %></td>
   </tr>

 </table>
 </div>
 <div class="col-sm-4"></div>
</div>
</body>
</html>
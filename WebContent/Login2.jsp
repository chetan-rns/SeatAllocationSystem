<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet" type="text/css">
</head>
<body>
<div id="logmsk" style="display: block;">
    <!--<div id='close'>X</div>-->
    <div id="userbox">
    	<form action="login" method="post">
    	<!-- rgb(118, 171, 219) -->
        <h1 id="signup" style="background-color: rgb(118, 171, 219); background-position: initial initial; background-repeat: initial initial;">Enter your Register Number</h1>
        <input id="name" name="rno" placeholder="Register Number" style="opacity: 1; background-color: rgb(255, 255, 255); background-position: initial initial; background-repeat: initial initial;">
        <button id="signupb" style="opacity: 20;">SUBMIT</button>
        </form>
        <br>
        <br>
        <%
    		if(null!=request.getAttribute("Error"))
    		{
        		out.println("<p>Invalid register number!!</p>");
    		}
		%>
    </div>
</div>
<br>
</body>
</html>
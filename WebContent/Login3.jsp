<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Login</title>
</head>
<style>
	#name {
    -moz-appearance: none;
    -webkit-appearance: none;
    padding: 0 18px;
    margin: 44px auto;
    background: #fff;
    border: 1px solid #d9d9d9;
    border-top: 1px solid silver;
    -moz-border-radius: 1px;
    -webkit-border-radius: 1px;
    border-radius: 1px;
    color: #838383;
    width: 409px;
    display: block;
    margin-bottom: 200px;
    z-index: 1;
    position: relative;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    direction: ltr;
    height: 44px;
    font-size: 16px;
    text-align: left;
}


#signup {
    margin: 0px;
    padding: 3px 0px 9px;
    color: 	rgb(255, 255, 255);
    font-size: 32px;
    width: 100%;
    text-align: center;
    font-weight: normal;
    background:	#76ABDB;
    font-size: 22px;
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
    border-color: grey;/*#E78282*/
    font-weight: normal;
    margin: 10px 0 0 0;
    color: #fff;
    position: absolute;
    right: 200px;
    bottom: 100px;
    font-size: 17px;
    width: 103px;
    height: 35px;
    outline: none;
    cursor: pointer;
}

#userbox {
    position: absolute;
    width: 480px;
    height: 324px;
    background: white;
    top: 50%;
    margin-top: -174px;
    left: 50%;
    margin-left: -240px;
    box-shadow: 0px 1px 16px rgba(0, 0, 0, 0.45);
}

/*#logmsk {
    position: absolute;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.32);
    box-shadow: inset 0 0 376px rgba(0, 0, 0, 0.22);
    z-index: 9999;
    display: none;
}
body {
    width: 100%;
    height: 100%;
    min-width: 300px;
    min-height: 500px;
    overflow: hidden;
    margin: 0;
    padding: 0;
    position: absolute;
    background: #fff;
    color: #333;
}*/
	

</style>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="StartingPage2.html">Home</a></li>
      <li ><a href="SignUp.html">SignUp</a></li>
    </ul>
  </div>
</nav>
<!--<div class="container-fluid">
    <form class="form-horizontal" action="LoginServlet" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-2">
        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
      </div>
      <div class="col-sm-8"></div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-2">
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
      </div>
      <div class="col-sm-8"></div>
    </div>
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>-->

<div id="logmsk" style="display: block;">
    <div id="userbox">
    	 <form action="login" method="post">
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
</body>
</html>
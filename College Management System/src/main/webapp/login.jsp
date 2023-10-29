<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<style type="text/css">


.d{
max-width: 400px;
margin: 0 auto;
padding:20px;
background-color:white;
border-radius:5px;
box-shadow: 0 0 30px 0 rgba(0, 0, 0, 0.3);
}
input{
height: 30px;
width: 50vh;
margin: 5px;
}
input[type=submit]{
background-color:green;
  color: white;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 30%;
  opacity: 0.9;
  font-size: 20px;
  border-radius: 20px;
}
a{
text-decoration: none;
}
</style>
</head>
<body>


<div class="d">
<form action="Loginservlet" method="post">
<fieldset>
<h1 style="text-align: center;">STUDENT LOGIN</h1>
<label>Email:</label><br>
<input type="text" name="email"><br>
<label>Password:</label><br>
<input type="text" name="password"><br>
<center><input type="submit" value="Login"></center>
<center><a href="StudentRegistrationForm.jsp">NewUser?</a></center>
</fieldset>
</form>
</div>

</body>
</html>
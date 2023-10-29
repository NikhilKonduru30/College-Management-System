<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>
<style type="text/css">
body{
background-image: url('img/college.jpg');
background-size: cover;
height: 100%;
width: 100%;
background-repeat: no-repeat;
}

.c{
max-width: 400px;
margin: 0 auto;
padding:20px;
background-color:white;
border-radius:5px;
box-shadow: 0 0 30px 0 rgba(0, 0, 0, 0.3);

}
.reg{
 background-color:green;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 30%;
  opacity: 0.9;
  border-radius: 10px;
}
input,select,textarea{
height: 30px;
width: 50vh;
margin: 5px;
}
a{
text-decoration: none;
}
</style>
</head>
<body >
<div class="image">
<%@include file="../header.jsp" %>
<div class="c">
<form action="StudentServlet" method="post" ><fieldset>
<h1 style="text-align: center">STUDENT REGISTRATION</h1>

<label>FullName</label><br>
<input type="text" name="name"><br>
<label>Email:</label><br>
<input type="text" name="email"><br>
<label>Password:</label><br>
<input type="password" name="password"><br>
<label>DateofBirth:</label><br>
<input type="date" name="date"><br> 
<label>Gender:</label><br>
<select class="gen" name="gender">
<option value="Select Gender" >Select Gender</option>
<option value="Male">Male</option>
<option value="Female">Female</option>
</select><br>
<label>Course:</label>
<input type="text" name="course" >
<br>
<label>Address:</label>
<textarea name="address" rows="5" cols="50"></textarea><br>
<center><button  type="submit" class="reg">Register</button></center>
<center><a href="Studentlogin.jsp">Back To Login</a></center>
</fieldset>
</form>
</div>
</div>
</body>
</html>
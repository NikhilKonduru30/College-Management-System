<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>
<style type="text/css">
.image{
background-image: url('https://tse4.mm.bing.net/th?id=OIP.zt4BaJuNK7JotsLOeg9MhQHaFj&pid=Api&P=0&h=180');
background-size: cover;
height: 100%;
width: 100%;
background-repeat: no-repeat;
}
body{
font-family: Arial, Helvetica, sans-serif;

}
.c{
max-width: 400px;
margin: 0 auto;
padding:20px;
background-color:white;
border-radius:5px;


}
.reg{
 background-color:green;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
input,select,textarea{
height: 30px;
width: 50vh;
margin: 5px;
}

</style>
</head>
<body >
<div class="image">
<%@include file="../header.jsp" %>
<div class="c">
<form action="StudentServlet" method="post" ><fieldset>
<h1 style="text-align: center">ADMIN REGISTRATION</h1>

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
</select>
<br>
<label>Address:</label>
<textarea name="address" rows="5" cols="50"></textarea><br>
<button  type="submit" class="reg">Register</button>
<center><a href="index.jsp">Back To Login</a></center>
</fieldset>
</form>
</div>
</div>
</body>
</html>
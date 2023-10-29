<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="Controller.Personaldetails" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

img{
width:190px;
height:200px;
border-radius: 200px;
}
.con {
 display: flex;
 padding-left: 10px;
 height: 100vh;
 
}
.vertical-line {
 width: 2px;
 height: 100vh;
 background-color: #000;
}
.na{
padding-top: 10px;
padding-left: 50px;
}
a{

line-height: 30px;
margin:10px;

}
.btn {
  display: inline-block;
  font-weight: 400;
  line-height: 1.5;
  color: #212529;
  text-align: center;
  text-decoration: none;
  vertical-align: middle;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  user-select: none;
  background-color: transparent;
  border: 1px solid transparent;
  padding: 0.375rem 0.75rem;
  font-size: 1rem;
  border-radius: 0.25rem;
  transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}
.btn-primary {
  color: black;
  background-color: white;
  border-color: black;
}
</style>
</head>
<body>
<div class="con" >
 <div>
 <img alt="photo" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlUbAyS_643dq_B69jZAlPNW6_Xc7SLELY6SpRsc5OI2wHiiYG">
  <div class="na">
   <nav >
  <div >
    <a class="btn btn-primary" href="PersonalDetails.jsp">Personal Details</a>
  </div>
</nav>

<nav >
  <div >
    <a class="btn btn-primary" href="CourseDetails.jsp">Course Details</a>
  </div>
</nav>
<div>
   <a class="btn btn-primary" href="StudentEdit.jsp" role="button">Edit</a>
  </div>
<div>
   <a class="btn btn-primary" href="StudentLogout.jsp" role="button">Logout</a>
  </div>

</div>
  </div>
  
<div class="vertical-line"></div>
</div>

</body>
</html>
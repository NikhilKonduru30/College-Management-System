<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="Controller.Personaldetails" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-color: lightgray;
}
.header{
background-color: gray;
}
img{
width:250px;
height:200px;
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
<%HttpSession s=request.getSession(); %>
<body>
<div class="header">
 <%@include file="../header.jsp" %>
 </div>
<div class="con" >
 <div>
 
  <div class="na">
   
  <div >
    <a class="btn btn-primary" href="StudentDetails.jsp">Student Details</a>
  </div>

<div>
   <a class="btn btn-primary" href="AdminLogout.jsp" role="button">Logout</a>
  </div>

</div>
  </div>
  
<div class="vertical-line"></div>
</div>

</body>
</html>
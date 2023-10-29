<%@page import="com.db.DBConnect"%>
<%@page import="Controller.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*,java.util.*" %>
<%@ page import="Controller.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>
<style type="text/css">

body{
background-color: lightgray;
}
.header{
background-color:gray;
}
.c{
max-width: 400px;
margin: 0 auto;
padding:20px;
background-color:white;
border-radius:5px;
box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);

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
  border-radius: 30px;
}
input,select,textarea{
height: 30px;
width: 50vh;
margin: 5px;
}
fieldset{
border: none;
}
</style>
</head>
<body >
<%


String id=String.valueOf(request.getParameter("id"));
StudentDao dao2= new StudentDao(DBConnect.getConn());
Student student=dao2.getStudentById(id);
%>

<div class="header">
<%@include file="../header.jsp" %>
</div>
<div class="c">
<form action="StudentEditServlet" method="post" ><fieldset>
<h1 style="text-align: center">Edit Student Details</h1>
<label>FullName</label><br>
<input type="text" name="name" value=<%=student.getName() %>><br>

<label>DateofBirth:</label><br>
<input type="date" name="date" value=<%=student.getDate() %>><br> 
<label>Gender:</label><br>
<select class="gen" name="gender"  value=<%=student.getGender() %> >

<option value="Male">Male</option>
<option value="Female">Female</option>
</select><br>
<label>Course:</label>
<input type="text" name="course" value=<%=student.getCourse() %>>
<br>
<label>Address:</label>
<textarea name="address" rows="5" cols="50" ><%=student.getAddress() %></textarea><br>
<center><button  type="submit" class="reg">Update</button></center>

</fieldset>
</form>
</div>

</body>
</html>
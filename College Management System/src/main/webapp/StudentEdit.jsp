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
background-color: LightGray;
}
.header{
background-color: gray;
}
.c{
max-width: 400px;
margin: 0 auto;
padding:20px;
background-color:white;
border-radius:30px;
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
HttpSession s=request.getSession();
String e=String.valueOf(s.getAttribute("email"));
Student student = new Student();
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");

String s1="select NAME,EMAIL,PASSWORD,DATEOFBIRTH,GENDER,COURSE,ADDRESS from student where email=?";
PreparedStatement  stm = c.prepareStatement(s1);
stm.setString(1, e);
ResultSet rs=stm.executeQuery();
while(rs.next()){
     student.setName(rs.getString("NAME"));
     student.setEmail(rs.getString("EMAIL"));
     student.setPassword(rs.getString("PASSWORD"));
     student.setDate(rs.getString("DATEOFBIRTH"));
     student.setGender(rs.getString("GENDER"));
     student.setCourse(rs.getString("COURSE"));
     student.setAddress(rs.getString("ADDRESS"));
     
}
%>
<div class="header">
<%@include file="../header.jsp" %>
</div>
<br>
<div class="c">
<form action="StudentEditServlet" method="post" ><fieldset>
<h1 style="text-align: center">Edit Student Details</h1>
<label>FullName</label><br>
<input type="text" name="name" value=<%=student.getName() %>><br>

<label>Password:</label><br>
<input type="password" name="password" value=<%=student.getPassword() %>><br>
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
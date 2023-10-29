<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
<%@ page import="Controller.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
background-color: LightGray;
}
.header{
background-color: gray;
}
.dd{
display: flex;

}
.d{
padding-top:50px;
padding-left:100px;
line-height: 50px;
}
</style>
</head>
<body>
<%
HttpSession s=request.getSession();
String e=String.valueOf(s.getAttribute("email"));
Student student = new Student();
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");

String s1="select COURSE from student where email=?";
PreparedStatement  stm = c.prepareStatement(s1);
stm.setString(1, e);
ResultSet rs=stm.executeQuery();
while(rs.next()){
     student.setCourse(rs.getString("COURSE"));
    
}

%>
<div class="header">
<%@include file="../header.jsp" %>
</div>
<div class="dd">
<div class="d1">

<%@include file="StudentDashboard.jsp" %>
</div>
<div class="d">
<center><h1>STUDENT DASHBOARD</h1></center>
<fieldset>
Course:<%= student.getCourse() %>
</fieldset>	
 </div>
</div>
</body>
</html>
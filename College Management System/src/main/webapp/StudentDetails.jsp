
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="Controller.Student"%>
<%@page import="Controller.StudentDao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style type="text/css">
body{
background-color: lightgray;
}
.header{
background-color: gray;
}
body{
padding-top:15px;
 font-family: "Times New Roman", Times, serif;
}
	
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<%HttpSession s=request.getSession(); %>
<body>
 <div class="header">
	<%@include file="header.jsp"%>
</div>
	<div class="container-fluid p-3">
		<div class="row">

			
			<div class="col-md-12">
			<div class="card paint-card">
			<div class="card-body">
			<p class="fs-3 text-center"> Student Details</p>
			
			<table class = "table">
			<thead>
			<tr>
			<th scope="col">Name</th>
			<th scope="col">Email</th>
			<th scope="col">DOB</th>
			<th scope="col">Gender</th>
			<th scope="col">Course</th>
			<th scope="col">Address</th>
			<th scope="col">Action</th>
			</tr>
			</thead>
			<tbody>
			<%
			StudentDao dao2=new StudentDao(DBConnect.getConn());
		List<Student> list2 = dao2.getAllStudent();
		   for(Student d:list2)
			{
			%>
			<tr>
			<td><%=d.getName()%></td>
			<td><%=d.getEmail()%></td>
			<td><%=d.getDate()%></td>
			<td><%=d.getGender()%></td>
			<td><%=d.getCourse()%></td>	
			<td><%=d.getAddress()%></td>	
			<td>
			<a href="edit_student.jsp?id=<%=d.getEmail()%>" class="btn btn-sm btn-primary">Edit</a>
			<a href="Deletestudent?id=<%=d.getEmail()%>" class="btn btn-sm btn-danger">Delete</a>
			</td>
			<%
			}
			%>
			</tbody> 
			</table>
			</div>
			</div>
			
			</div>
					
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.image{
background-image: url('https://tse4.mm.bing.net/th?id=OIP.zt4BaJuNK7JotsLOeg9MhQHaFj&pid=Api&P=0&h=180');
background-size: cover;
height: 100vh;
width: 100%;
background-repeat: no-repeat;
}
</style>
</head>
<body>
<div class="image">
<%@include file="../header.jsp" %>
<%
HttpSession s=request.getSession();
s.invalidate();
%>
<center><h1>You are successfully logged out!</h1></center>
<%@include file="login.jsp" %>
</div>
</body>
</html>
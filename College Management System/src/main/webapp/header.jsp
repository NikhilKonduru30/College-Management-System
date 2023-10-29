<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

nav{
display:flex;
justify-content: space-between;
align-items: center;
}
nav b{
padding-left: 20px;
}
.links{
flex: 1;
text-align: right;
padding-right: 30px;
}
.links ul li{
list-style: none;;
display: inline-block;
padding: 8px 12px;
position: relative;
}
.links ul li a{
color:black;
 font-size:20px;
  text-decoration: none;
  
}
b{
font-size:20px;
}
</style>
</head>
<body>
<nav>
<b>BTech Days</b>
<div class="links">
<ul>
<li><a href="home.jsp">Home</a></li>
<li><a href="Adminhealogin.jsp">Admin Login</a></li>
<li><a href="Studentlogin.jsp">Student Login</a></li>
</ul>
</div>
</nav>
<hr>
</body>
</html>
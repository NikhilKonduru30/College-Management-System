<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
background-image: url('img/college.jpg');
background-size: 115%;
background-repeat: no-repeat;
}
h1{
padding-top: 20px;
}

.details{
  display: flex;
  justify-content: space-around;
  align-items: center;
  padding: 200px 80px;
}
.details .d{
 display: flex;
 flex-direction: column;
 justify-content: center;
 align-items: center;
 padding: 0px 40px;
}
p{

font-size: 30px;
color:#00008B;
}
.detais .d .heading{

  color: #333333;
  text-transform:uppercase;
  margin: 10px 0;
}
.details .d .text{
  margin: 10px 0;
}
</style>
</head>
<body>

<%@include file="header.jsp" %>
<center><h1>Welcome</h1></center>
<center><h1>To</h1></center>
<center><h1>ABC ENGINEERING COLLEGE</h1></center>



<div class="details">
<div class="d">
 <p class="heading">Address</p>
 <p class="text">HYDERABAD,Telangana</p>
</div>
<div class="d">
 <p class="heading">Contact Number</p>
 <p class="text">+(91)8882255888</p>
</div>
<div class="d">
 <p class="heading">Email Address</p>
 <p class="text">abc@gmail.com</p>
</div>
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Multiplication</title>
</head>
<body>
	<h2>Multiplication</h2>
	<form action="add_Mul" method="post">
		Num1: <input type="number" name="num1" /><br> Num2: <input
			type="number" name="num2" /><br> <input type="submit"
			value="Mul" />
	</form><br>
	your Multiplication Value is : 
	<%
	if (request.getAttribute("result") != null) {
		out.print(request.getAttribute("result"));
	}
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Division</title>
</head>
<body >
<h2>Division</h2>
<form action="add_Div" method="post">
Num1: <input type="text"  name="num1"/><br>
Num2: <input type="text"  name="num2"/><br>
<input type="submit" value="div" />
</form><br>
your Division Value is :
<%
	if (request.getAttribute("result") != null) {
		out.print(request.getAttribute("result"));
	}
	%>
</body>
</html>
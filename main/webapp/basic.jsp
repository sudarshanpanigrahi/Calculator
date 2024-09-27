<%@page import="java.util.Date"%>
<%@  include file="a.txt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tags</title>
</head>
<body>
all Tags
	<%
	//Scriplet   only implicit object like(request,response,out,session etc) and local veriable allow
	int x = 0;
	out.print("x");
	%>
	
	<%!//Declaration Tag except implicit object/html code (static-non static methods allows)
	public static int x = 10;
	public int y = 20;

	public int test() {
		return 200;
	}
	// Expression Tag only one Statement allow and no ;%>
	
	<%=test()%>
	<%=y%>
	<%
			//directive Tag like Page and Include
	%>
	<%=new Date()%>
</body>
</html>
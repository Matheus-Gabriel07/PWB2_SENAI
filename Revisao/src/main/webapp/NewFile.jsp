<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Data atual</title>
</head>
<body>
	<h1>Data Atual</h1>
	<%
	java.util.Date dataAtual = new java.util.Date(); 
	java.text.SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	String dataFormatada = sdf.format(dataAtual);
	%>
	
	<p>A data formatada atual é <%=dataFormatada %></p>
</body>
</html>
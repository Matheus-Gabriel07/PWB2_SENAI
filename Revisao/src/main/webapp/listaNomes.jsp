<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head> 
<body>
	<h1>Lista de Nomes</h1>
	<%
	java.util.List<String> nomes = new java.util.ArrayList<>();
	nomes.add("João");
	nomes.add("Maria");
	nomes.add("Pedro");
	
	for(String nome : nomes) {
	%>
		<p><%=nome %></p>
	<%} %>
</body>
</html>
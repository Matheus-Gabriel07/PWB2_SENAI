<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Verificador de Idade</title>
</head>
<body>
<%-- Declaração de variáveis --%>
<% 
String nome = "Matheus"; 
int idade = 22;
%>

<%-- Código Java dentro das tags JSP --%>
<% if(idade >= 18) { %>
	<h1>Bem-vindo, <%=nome %></h1>
	<p>Você é maior de idade</p>
<% } else {%>
	<h1>Acesso negado, você é menor de idade <%=nome%></h1>
<%} %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exercicio - Formulario de viagem</title>
<link rel="stylesheet" href="./style.css" />
</head>
<body>
<%
String nome = request.getParameter("nomeUser");
int idade = Integer.parseInt(request.getParameter("idadeUser"));

if(idade < 12) {%>
<div class="resposta_container">
<h1>Aten��o <%=nome %></h1>
<p>Voc� n�o poder viajar!</p>
<a href="formulario.jsp">Voltar</a>
</div>
<%} else if(idade >= 12 && idade <=16) { %>
<div class="resposta_container">
<h1>Aten��o <%=nome %></h1>
<p>Voc� s� pode viajar com algum respons�vel!</p>
<a href="formulario.jsp">Voltar</a>
</div>
<%} else { %>
<div class="resposta_container">
<h1>Ol� <%=nome %></h1>
<p>Voc� poder� viajar sozinho!</p>
<a href="formulario.jsp">Voltar</a>
</div>
<%} %>
</body>
</html>
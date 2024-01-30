<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Locadora de Filmes</title>
<link rel="stylesheet" href="locadora.css"/>
<script src="script.js"></script>
</head>
<body>
	<a href="menu.jsp" class="btn-submit">Voltar</a>
	<h1>Locadora de Filmes KRM</h1>
	<h2>Filmes Disponíveis</h2>
	<ul id="filmes">
		<%
		String[] filmes = {"O Exorcista", "IT", "Sexta-feira 13"};
		for(String filme : filmes) {
		%>
		<li><%=filme %></li>
		<%} %>
	</ul>
	<h2>Alugar Filme</h2>
	<form id="alugar-form">
		<label for="filme-select">Selecione um filme</label>
		<select id="filme-select">
			<%for(String filme : filmes) { %>
			<option value="<%=filme%>"><%=filme %></option>
			<%} %>
		</select>
		<button type="submit">Alugar</button>
	</form>
	<h2>Filmes Alugados</h2>
	<ul id="alugados"></ul>
</body>
</html>
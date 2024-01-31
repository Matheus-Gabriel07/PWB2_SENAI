<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
ArrayList<String> arrayAluno = new ArrayList<>();
arrayAluno.add("Rafael");
arrayAluno.add("Matheus");
arrayAluno.add("Juliana");
arrayAluno.add("Giovana");
arrayAluno.add("Nicollas");
arrayAluno.add("Natasha");
arrayAluno.add("Leticia");
arrayAluno.add("Kaique");
arrayAluno.add("Pedro");

ArrayList<Double> arrayNota1 = new ArrayList<>();
ArrayList<Double> arrayNota2 = new ArrayList<>();
ArrayList<Double> arrayMedia = new ArrayList<>();

for(int i = 1; i <= 10; i++) {
	double nota1 = Math.floor(Math.random() * 10);
	double nota2 = Math.floor(Math.random() * 10);
	double media = (nota1 + nota2)/2;
	arrayNota1.add(nota1);
	arrayNota2.add(nota2);
	arrayMedia.add(media);
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculo Média</title>
<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: 0;
		font-family: sans-serif;
	}
	
	body {
		background: #cfcbbc;
	}
	
	h1 {
		text-align: center;
	}
	
	table {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%)
	}
	
	thead {
		background: #e6e6e6
	}
	
	td {
		padding: 8px 16px;
		text-align: center;
		border: 1px solid #121212;
	}
	
	thead tr td {
		font-weight: 700;
	}
</style>
</head>
<body>
<h1>Nota dos Alunos</h1>
<table>
	<thead>
	<tr>
		<td>Nome</td>
		<td>Nota 1</td>
		<td>Nota 2</td>
		<td>Média</td>
	</tr>
	</thead>
	<tbody>
	<%for(int i = 0; i < arrayAluno.size(); i++){ %>
		<tr>
			<td><%=arrayAluno.get(i) %></td>
			<td><%=arrayNota1.get(i) %></td>
			<td><%=arrayNota2.get(i) %></td>
			<td><%=arrayMedia.get(i) %></td>
		</tr>
	<%} %>
	</tbody>
</table>
</body>
</html>
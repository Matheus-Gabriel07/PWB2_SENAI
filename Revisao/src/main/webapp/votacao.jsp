<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melhor Ator do Ano</title>
<link rel="stylesheet" href="votacao.css" />
</head>
<%!public static int ator1 = 0;
	public static int ator2 = 0;
	public static int ator3 = 0;
	public static int ator4 = 0;

	public void addVoto(int op) {
		switch (op) {
		case 1:
			ator1++;
			break;
		case 2:
			ator2++;
			break;
		case 3:
			ator3++;
			break;
		case 4:
			ator4++;
			break;
		}
	}%>

<body>
	<%
 String voto = request.getParameter("Candidato");
 if ( voto == null ){
 %>
 <div class="container-form">
	<h1>🏆 Melhor Ator do Ano 🏆</h1>
	<h3>Selecione o ator que deseje votar, clique no botão votar.</h3>
	<form action="votacao.jsp" method="get">
		<fieldset>
			<input name="Candidato" type="radio" value="1" /> Samuel L. Jackson
			<br /> <input name="Candidato" type="radio" value="2" /> Johnny Depp
			<br /> <input name="Candidato" type="radio" value="3" /> Tom Cruise
			<br /><input name="Candidato" type="radio" value="4" />  Adam Sandler
		</fieldset>
		<input type="submit" value="Votar" id="button-submit"/>
	</form>
	</div>
	<%}else{

		addVoto(Integer.parseInt(voto));
%>
	<div class="resultado">
	<h1>Resultado Parcial da Pesquisa</h1>
	<h2>
		Samuel L. Jackson
		<%= ator1 %>
		votos
	</h2>
	<h2>
		Johnny Depp
		<%= ator2 %>
		votos
	</h2>
	<h2>
		Tom Cruise
		<%= ator3 %>
		votos
	</h2>
	<h2>
		Adam Sandler
		<%= ator4 %>
		votos
	</h2>
	<a href="votacao.jsp"> Voltar a página da pesquisa </a>
	</div>
	<%
 }
 %>
</body>
</html>
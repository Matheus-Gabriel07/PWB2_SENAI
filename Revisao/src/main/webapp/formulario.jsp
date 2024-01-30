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
	<form action="resposta.jsp" method="get">
		<h1>Agência de viagem</h1>
		<p>Informe seus dados</p>
		<div class="input_container">
			<label for="nomeUser">Digite seu nome</label>
			<input type="text" name="nomeUser" id="user" required/>
		</div>
		<div class="input_container">
			<label for="idadeUser">Digite sua idade</label>
			<input type="number" name="idadeUser" id="idade" required/>
		</div>
		<input type="submit" id="button_submit"/>
	</form>
</body>
</html>
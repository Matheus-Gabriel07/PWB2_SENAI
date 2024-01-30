<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jogo de Adivinhação</title>
<link rel="stylesheet" href="jogoStyle.css"/>
<script src="jogoScript.js"></script>
</head>
<body>
	<h1>Jogo de Adivinhação</h1>
	<p id="mensagem"></p>
	
	<input type="number" id="numInput"/>
	<button onclick="adivinha()">Adivinhar</button>
</body>
</html>
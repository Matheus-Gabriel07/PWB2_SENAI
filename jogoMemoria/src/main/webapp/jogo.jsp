<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jogo da memoria</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>
<div class="container">
	<h1>Boa sorte!</h1>
	<a href="Index.jsp">voltar</a>
</div>
<section class="memory-game">
	<%--
	Data: Permite armazenar informações extras em elementos, sem a necessidade 
	de uso de um elemento não semântico, ou de poluir os nomes de classes.
	 --%>
    <div class="memory-card" data-personagem="finn">
      <img class="front-face" src="images/finn.png" alt="finn" />
      <img class="back-face" src="images/logo_cartoon.png" alt="Cartoon Logo" />
    </div>
    <div class="memory-card" data-personagem="finn">
      <img class="front-face" src="images/finn.png" alt="finn" />
      <img class="back-face" src="images/logo_cartoon.png" alt="Cartoon Logo" />
    </div>
    
    <div class="memory-card" data-personagem="monsterHigh">
      <img class="front-face" src="images/monsterHigh.png" alt="Aurelia" />
      <img class="back-face" src="images/logo_cartoon.png" alt="Cartoon Logo" />
    </div>
    <div class="memory-card" data-personagem="monsterHigh">
      <img class="front-face" src="images/monsterHigh.png" alt="Aurelia" />
      <img class="back-face" src="images/logo_cartoon.png" alt="Cartoon Logo" />
    </div>

    <div class="memory-card" data-personagem="mordecai">
      <img class="front-face" src="images/mordecai.png" alt="mordecai" />
      <img class="back-face" src="images/logo_cartoon.png" alt="Cartoon Logo" />
    </div>
    <div class="memory-card" data-personagem="mordecai">
      <img class="front-face" src="images/mordecai.png" alt="mordecai" />
      <img class="back-face" src="images/logo_cartoon.png" alt="Cartoon Logo" />
    </div>
    
    <div class="memory-card" data-personagem="patolino">
      <img class="front-face" src="images/patolino.png" alt="patolino" />
      <img class="back-face" src="images/logo_cartoon.png" alt="Cartoon Logo" />
    </div>
    <div class="memory-card" data-personagem="patolino">
      <img class="front-face" src="images/patolino.png" alt="patolino" />
      <img class="back-face" src="images/logo_cartoon.png" alt="Cartoon Logo" />
    </div>

    <div class="memory-card" data-personagem="puroOsso">
      <img class="front-face" src="images/puroOsso.png" alt="puroOsso" />
      <img class="back-face" src="images/logo_cartoon.png" alt="Cartoon Logo" />
    </div>
    <div class="memory-card" data-personagem="puroOsso">
      <img class="front-face" src="images/puroOsso.png" alt="puroOsso" />
      <img class="back-face" src="images/logo_cartoon.png" alt="Cartoon Logo" />
    </div>
    
    <div class="memory-card" data-personagem="titans">
      <img class="front-face" src="images/titans.png" alt="titans" />
      <img class="back-face" src="images/logo_cartoon.png" alt="Cartoon Logo" />
    </div>
    <div class="memory-card" data-personagem="titans">
      <img class="front-face" src="images/titans.png" alt="titans" />
      <img class="back-face" src="images/logo_cartoon.png" alt="Cartoon Logo" />
    </div>
    
    <div class="memory-card" data-personagem="ben10">
      <img class="front-face" src="images/ben10.png" alt="ben10" />
      <img class="back-face" src="images/logo_cartoon.png" alt="Cartoon Logo" />
    </div>
    <div class="memory-card" data-personagem="ben10">
      <img class="front-face" src="images/ben10.png" alt="ben10" />
      <img class="back-face" src="images/logo_cartoon.png" alt="Cartoon Logo" />
    </div>

	<div class="memory-card" data-personagem="scooby">
      <img class="front-face" src="images/scoobyDoo.png" alt="scooby" />
      <img class="back-face" src="images/logo_cartoon.png" alt="Cartoon Logo" />
    </div>
	<div class="memory-card" data-personagem="scooby">
      <img class="front-face" src="images/scoobyDoo.png" alt="scooby" />
      <img class="back-face" src="images/logo_cartoon.png" alt="Cartoon Logo" />
    </div>
  </section>

  <script src="script.js"></script>
</body>
</html>
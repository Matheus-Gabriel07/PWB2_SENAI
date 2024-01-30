<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP - EX 2</title>
</head>
<body>
	<h2>Entre com o usuário e senha</h2>
	<form action="login.jsp" method="post">
		<label for="user">Usuário: </label>
		<input type="text" name="user" placeholder="Digite seu usuário" value=""/><br><br>
		<label for="senha">Senha: </label>
		<input type="password" name="senha" placeholder="Digite sua senha"  value="" /><br><br>
		<input type="submit" value="Entrar"/>
	</form>
</body>
</html>
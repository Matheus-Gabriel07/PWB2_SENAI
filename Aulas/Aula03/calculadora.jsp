<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculadora</title>
<link rel="stylesheet" href="calculadora.css" />
</head>
<body>
	<div class="container">
		<a href="menu.jsp" class="btn-submit">Voltar</a>
		<h1>Calculadora</h1>
		
		<form method="post" action="calcular.jsp">
			<div class="form-group">
				<label for="num1">Número 1:</label>
				<input type="number" name="num1" id="num1" required/>
			</div>
			<div class="form-group">
				<label for="operacao">Operação: </label>
				<select name="operacao" id="operacao" required>
					<option value="+">+</option>
					<option value="-">-</option>
					<option value="*">*</option>
					<option value="/">/</option>
				</select>
			</div>
			<div class="form-group">
				<label for="num2">Número 2:</label>
				<input type="number" name="num2" id="num2" required/>
			</div>
			<button type="submit" class="btn-submit">Calcular</button>
		</form>
	</div>
</body>
</html>
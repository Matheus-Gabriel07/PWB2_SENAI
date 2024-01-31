<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado Calculadora</title>
<link rel="stylesheet" href="calculadora.css" />
</head>
<body>
	<div class="container">
		<h1>Resultado</h1>
		<%
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String operacao = request.getParameter("operacao");
		
		double resultado = 0;
		if(operacao.equals("+")) {
			resultado = Double.parseDouble(num1) + Double.parseDouble(num2);
		} else if(operacao.equals("-")) {
			resultado = Double.parseDouble(num1) - Double.parseDouble(num2);
		} else if(operacao.equals("*")) {
			resultado = Double.parseDouble(num1) * Double.parseDouble(num2);
		} else if(operacao.equals("/")) {
			resultado = Double.parseDouble(num1) / Double.parseDouble(num2);
		} else {
			resultado = 0;
		}
		%>
		<div class="result">
			<p>O resultado da operação <%=num1%> <%=operacao%> <%=num2 %> é: </p>
			<p><%=resultado %>
		</div>
		<a href="calculadora.jsp" class="btn-submit">Voltar</a>
	</div>
</body>
</html>
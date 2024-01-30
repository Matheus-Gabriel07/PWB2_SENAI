<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu Interativo</title>
<style>
	.container {
		max-width: 400px;
		margin: 50px auto;
		background: #3279A676;
		backdrop-filter: blur(4px);
		padding: 20px;
		border-radius: 5px;
		box-shadow: 0 2px 5px rgba(0,0,0,0.1);
	}
	
	.container h1 {
		text-align:center;
		color: #121212;
	}
	
	.container form {
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column;
		gap: 16px;
	}
	
	.container form .form-input label {
		font-family: Arial, sans-serif;
		font-weight: 400;
	}
	
	.container form .btn-submit {
		background: #66CDD9;
		color: #ffffff;
		padding: 10px 20px;
		font-size: 16px;
		border: none;
		border-radius: 5px;
		cursor: pointer;
	}
	
	.container form .btn-submit:hover {
		background: #F2F2F2;
		color: #121212;
	}

</style>
</head>
<body>
	<%
	String pagina = request.getParameter("grpPagina");
	if(pagina == null) {
	%>
	<jsp:include page="cabecalho.jsp"></jsp:include>
	<div class="container">
		<h1>Escolha a página desejada</h1>
		<form action="menu.jsp" method="get">
			<div class="form-input">
				<input type="radio" name="grpPagina" value="1" checked="checked" />
				<label>Calculadora</label>
			</div>
			<div class="form-input">
				<input type="radio" name="grpPagina" value="2" checked="checked" />
				<label>Locadora de filmes</label>
			</div>
			<button type="submit" class="btn-submit">Entrar</button>
		</form>
	</div>
	<%
	}else {
		String op = request.getParameter("grpPagina");
		if(op.equals("1")) {
	%>
	<jsp:forward page="calculadora.jsp">
		<jsp:param value="<%=op%>" name="op" />
	</jsp:forward>
	<%} else { %>
	<jsp:forward page="locadora.jsp">
		<jsp:param value="<%=op%>" name="op" />
	</jsp:forward>
	<%}} %>
</body>
</html>
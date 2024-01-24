<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exemplo de ações</title>
</head>
<body>
	<%
	String pagina = request.getParameter("grpPagina");
	if (pagina == null) {
	%>
	<jsp:include page="cabecalho.jsp"></jsp:include>
	<form action="pagina.jsp" method="get">
		<input type="radio" name="grpPagina" value="1" checked="checked" />
		Pagina 1 <br> <input type="radio" name="grpPagina" value="2" />
		Pagina 2 <br> <label>Digite seu nome</label> <input type="text"
			name="txtNome" /> <input type="submit" value="Enviar" />
	</form>

	<%
	} else {
	String op = request.getParameter("grpPagina");
	String nome = request.getParameter("txtNome");
	if (op.equals("1")) {
	%>
	<jsp:forward page="pagina1.jsp">
		<jsp:param value="<%=nome%>" name="nome" />
	</jsp:forward>
	<%
	} else {
	%>
	<jsp:forward page="pagina2.jsp">
		<jsp:param value="<%=nome%>" name="nome" />
	</jsp:forward>
	<%
	}
	}
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<%
	String usuario = request.getParameter("user");
	String senha = request.getParameter("senha");
	
	if(usuario.equals("Matheus")) {
		if(senha.equals("1234")) {
			out.println("<h1>Olá, " + usuario + "!</h1>");
		} else {
			out.println("<h3>Senha incorreta!</h3>");
		}
	} else {
		out.println("<h3>Usuario incorreto!</h3>");
	}
%>

</body>
</html>
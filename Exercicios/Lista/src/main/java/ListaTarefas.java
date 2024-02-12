import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ListaTarefas")
public class ListaTarefas extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<String> lista = new ArrayList<String>();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String tarefa = request.getParameter("tarefa");
		lista.add(tarefa);
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<title>Bem vindo ao SENAI SA.</title>");
		
		out.println("<style>");
		out.println("body {");	
		out.println("	padding: 20px;");
		out.println("	background: #F0F2F6;");
		out.println("	font-family: Arial, sans-serif;");
		out.println("}");
		
		out.println(".container {");
		out.println("	display: flex;");
		out.println("	justify-content: center;");
		out.println("	align-items: center;");
		out.println("	flex-direction: column;");
		out.println("}");
		
		out.println("p {");
		out.println("	color: #8F514A;");
		out.println("	font-family: Helvetica, sans-serif; ");
		out.println("}");
		
		out.println("a {");
		out.println("	font-family: Helvetica, sans-serif;");
		out.println("	padding: 10px;");
		out.println("	padding-inline: 1rem;");
		out.println("	border: 0;");
		out.println("	border-radius: 50px;");
		out.println("	margin: 10px;");
		out.println("	background: #8F514A;");
		out.println("	color: #f3f3f3;");
		out.println("	text-decoration: none;");
		out.println("	font-weight: 700;");
		out.println("	cursor: pointer;");
		
		out.println("</style>");
		out.println("</head>");
		
		out.println("<body><div class='container'>");
		out.println("<p>" + lista + "</p>");
		out.println("<a href=\"index.html\">Voltar</a></div>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}

}

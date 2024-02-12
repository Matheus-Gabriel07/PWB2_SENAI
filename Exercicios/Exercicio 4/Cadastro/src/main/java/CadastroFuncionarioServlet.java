import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CadastroFuncionarioServlet")
public class CadastroFuncionarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String nome = request.getParameter("nome");
		String registro = request.getParameter("registro");
		String sexo = request.getParameter("sexo").equals("M") ? "Masculino" : "Feminino";
		String endereco = request.getParameter("endereco");
		String telefone = request.getParameter("tel");
		
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
		out.println("	color: #7086AA;");
		out.println("	font-family: Helvetica, sans-serif; ");
		out.println("}");
		
		out.println("a {");
		out.println("	font-family: Helvetica, sans-serif;");
		out.println("	padding: 10px;");
		out.println("	padding-inline: 1rem;");
		out.println("	border: 0;");
		out.println("	border-radius: 50px;");
		out.println("	margin: 10px;");
		out.println("	background: #7086AA;");
		out.println("	color: #f3f3f3;");
		out.println("	font-weight: 700;");
		out.println("	cursor: pointer;");
		
		out.println("</style>");
		out.println("</head>");
		
		out.println("<body>");
		out.println("<div class='container'><h1>Seja bem-vindo " + nome +"!</h1>");
		out.println("<h2>Informações sobre o funcionário</h2>");
		out.println("<p>Nº de registro: " + registro + "</p>");
		out.println("<p>Sexo: " + sexo +"</p>");
		out.println("<p>Endereço: " + endereco +"</p>");
		out.println("<p>Telefone" + telefone + "</p>");
		out.println("<a href=\"index.html\">Voltar</a></div>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}

}
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CadastroAlunoServlet")
public class CadastroAlunoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		
		GregorianCalendar calendario = new GregorianCalendar();
		String mensagem = calendario.get(Calendar.AM_PM) == Calendar.AM ? "Bom dia" : "Boa Tarde";
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<body>");
		out.println("<p>" + mensagem + ", " + nome + "</p>");
		out.println("<p>Seu email é: " + email + "</p>");
		out.println("<p>Você está no 2º Ano do curso de ADS no Senai</p>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}

}
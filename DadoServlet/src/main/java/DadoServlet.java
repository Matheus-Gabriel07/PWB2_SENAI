import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DadoServlet")
public class DadoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int NUM_SIDES = 6;
	
    @Override   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int d1 = rollDice();
		int d2 = rollDice();
		String dResp;
		
		if(d1 == d2) {
			dResp = "O dados tem o mesmo valor!";
		} else if (d1 > d2) {
			dResp = "O dado 1 é maior que o dado 2";
		} else {
			dResp = "O dado 2 é maior que o dado 1";
		}
		
		response.setContentType("text/html");
		
		try(PrintWriter out = response.getWriter()) {
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Lançamento de dados</title>");
			
			out.println("<style>");
			out.println("body {");			
			out.println("	margin: 0 auto;");
			out.println("	padding: 20px;");
			out.println("	font-family: Arial, sans-serif;");
			out.println("	text-align: center;");
			out.println("	background: url('imagens/background.gif');");
			out.println("	background-size: cover;");
			out.println("	background-repeat: no-repeat;");
			out.println("}");		
			
			out.println("h1 {");
			out.println("	color: #f3f3f3;");
			out.println("}");
			
			out.println(".dice-number {");
			out.println("	font-size: 40px;");
			out.println("	margin-top: 20px;");
			out.println("	color: #121212;");
			out.println("	text-align: center;");
			out.println("}");
			
			out.println(".dice-label{");
			out.println("	font-weight: 700;");
			out.println("	color: #f3f3f3;");
			out.println("}");
			
			out.println(".dice-label-resp{");
			out.println("	font-size: 20px;");
			out.println("	color: #f3f3f3;");
			out.println("}");
			out.println("</style>");
			out.println("</head>");
			
			out.println("<body>");
			out.println("<h1>Lançamento de dados</h1>");
			out.println("<div class=\"dice-number\"><span class=\"dice-label\">Dado1: "+ d1 + "</span></div>");
			out.println("<div class=\"dice-number\"><span class=\"dice-label\">Dado2: "+ d2 + "</span></div>");
			out.println("<div class=\"dice-number\"><span class=\"dice-label-resp\">" + dResp +"</span/></div>");
			out.println("</body>");
			out.println("</html>");
		}
	}
    
    private int rollDice() {
    	Random aleatorio = new Random();
    	return aleatorio.nextInt(NUM_SIDES) + 1;
    }
}
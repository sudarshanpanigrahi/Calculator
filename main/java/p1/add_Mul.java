package p1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add_Mul")
public class add_Mul extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public add_Mul() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));

		calculator c = new calculator();
		int result = c.Mul(num1, num2);
		request.setAttribute("result", result);
		RequestDispatcher rd = request.getRequestDispatcher("addMul.jsp");
		rd.forward(request, response);
	}

}

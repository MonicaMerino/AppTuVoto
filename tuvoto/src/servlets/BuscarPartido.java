package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.DaoPartido;

@WebServlet("/BuscarPartido")
public class BuscarPartido extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Buscador directo a un partido político
		DaoPartido dao = new DaoPartido();

		request.setAttribute("partidopolitico", dao.infoPartido(request.getParameter("idPartido")));
		request.getRequestDispatcher("partidos2.jsp").forward(request, response);
	}

}

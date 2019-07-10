package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.DaoPartido;

@WebServlet("/BajaPartidoAction")
public class BajaPartidoAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Damos de baja el partido y actualizamos los partidos políticos
		// Solo podrá acceder al administrador
		DaoPartido dao = new DaoPartido();
		String idPartido = request.getParameter("idPartido");

		dao.bajaPartido(idPartido);
		request.setAttribute("partidos", dao.infoPartidos());

		request.getRequestDispatcher("administracion.html").forward(request, response);
	}

}

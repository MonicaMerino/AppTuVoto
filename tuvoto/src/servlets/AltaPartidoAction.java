package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.DaoPartido;

@WebServlet("/AltaPartidoAction")
public class AltaPartidoAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Damos de alta el partido y actualizamos los partidos políticos
		// Solo podrá acceder al administrador
		DaoPartido dao = new DaoPartido();
		String idPartido = request.getParameter("idPartido");
		String informacion = request.getParameter("informacion");
		String imagen = request.getParameter("imagen");
		dao.altaPartido(idPartido, informacion, imagen);
		request.setAttribute("partidos", dao.infoPartidos());

		request.getRequestDispatcher("administracion.html").forward(request, response);

	}

}

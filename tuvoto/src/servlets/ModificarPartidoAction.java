package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.DaoPartido;


@WebServlet("/ModificarPartidoAction")
public class ModificarPartidoAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Modificamos el partido político. Solo tendrá acceso el administrador
		
		DaoPartido dao = new DaoPartido();
		String idPartido = request.getParameter("idPartido");
		String informacion = request.getParameter("informacion");
		String imagen = request.getParameter("imagen");
		
		dao.modificarInfo(idPartido, informacion, imagen);
		
		request.getRequestDispatcher("administracion.html").forward(request, response);
		}

}

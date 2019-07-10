package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.DaoUsuario;


@WebServlet("/EliminarUsuarioAction")
public class EliminarUsuarioAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Eliminamos el usuario
		HttpSession s = request.getSession(); 
		DaoUsuario dao = new DaoUsuario();
		String idUsuario= (String) s.getAttribute("idUsuario");
		dao.bajaUsuario(idUsuario);
		s.invalidate();
		request.getRequestDispatcher("Inicio").forward(request, response);
	}

}
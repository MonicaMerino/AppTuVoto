package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Usuario;
import modelo.DaoUsuario;

@WebServlet("/MostrarUsuarioAction")
public class MostrarUsuarioAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Modificamos los datos de usuario recuperando el idUsuario
		HttpSession s = request.getSession();
		DaoUsuario dao = new DaoUsuario();
		String dni = (String) s.getAttribute("idUsuario");
		Usuario usuario = dao.mostrarUsuario(dni);
		request.setAttribute("usuario", usuario);

		request.getRequestDispatcher("datosUsuario.jsp").forward(request, response);

	}

}
package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.DaoUsuario;
import utilidades.Utilidades;

@WebServlet("/RegistroAction")
public class RegistroAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Registrarse, damos de alta y vamos a la página de acceso.html

		DaoUsuario dao = new DaoUsuario();
		String nombre = request.getParameter("nombre");
		String apellidos = request.getParameter("apellidos");
		String identificador = request.getParameter("identificador");
		String idUsuario = request.getParameter("idUsuario");
		String provincia = request.getParameter("provincia");
		String ciudad = request.getParameter("ciudad");
		String email = request.getParameter("email");
		String password =Utilidades.encriptarSha256(request.getParameter("password"));

		dao.altaUsuario(nombre, apellidos, identificador, idUsuario, provincia, ciudad, email, password);

		request.getRequestDispatcher("LoginAction").forward(request, response);
	}

}

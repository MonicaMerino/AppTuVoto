package servlets;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import modelo.DaoUsuario;
import utilidades.Utilidades;


@WebServlet("/ModificarUsuarioAction")
public class ModificarUsuarioAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Modificamos los datos de usuario recuperando el idUsuario
		HttpSession s = request.getSession(); 
		DaoUsuario dao = new DaoUsuario();
		String dni= (String) s.getAttribute("idUsuario");
		String nombre = request.getParameter("nombre");
		String apellidos = request.getParameter("apellidos");
		String provincia = request.getParameter("provincia");
		String ciudad = request.getParameter("ciudad");
		String email = request.getParameter("email");
		String password = Utilidades.encriptarSha256(request.getParameter("password"));
		dao.actualizarUsuario(dni, nombre, apellidos, provincia, ciudad, email, password);
			
		request.getRequestDispatcher("VerificarAction").forward(request, response);
		
	}

}
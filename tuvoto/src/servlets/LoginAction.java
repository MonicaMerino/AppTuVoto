package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.DaoPartido;
import modelo.DaoUsuario;
import utilidades.Utilidades;

@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		DaoUsuario dao = new DaoUsuario();
		String email = request.getParameter("email");
		String password = Utilidades.encriptarSha256(request.getParameter("password"));
		String idUsuario = dao.buscarIdUsuario(email, password);

		if (idUsuario != "") {

			request.getSession().setAttribute("idUsuario", idUsuario);
			DaoPartido dac = new DaoPartido();
			request.setAttribute("partidos", dac.infoPartidos());
			// Creamos la cookie
			crearCookie(email, password, response);

			request.getRequestDispatcher("partidos.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("acceso.html").forward(request, response);

		}

	}

	private void crearCookie(String dato1, String dato2, HttpServletResponse resp) {
		Cookie ck = new Cookie("credenciales", dato1 + "|" + dato2);
		ck.setMaxAge(20000);
		resp.addCookie(ck);
	}

}

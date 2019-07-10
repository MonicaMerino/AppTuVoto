package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String op = request.getParameter("op");
		String url = "";
		switch (op) {

		case "doBuscar":
			url = "BuscarPartido";
			break;
		case "doLogin":
			url = "LoginAction";
			break;
		case "doRegistro":
			url = "RegistroAction";
			break;
		case "doModificarPartido":
			url = "ModificarPartidoAction";
			break;
		case "doAltaPartido":
			url = "AltaPartidoAction";
			break;
		case "doBajaPartido":
			url = "BajaPartidoAction";
			break;
		case "doEliminarUsuario":
			url = "EliminarUsuarioAction";
			break;
		case "doVota":
			url = "VotacionAction";
			break;
		case "doVerificar":
			url = "VerificarAction";
			break;
		case "toAcceso":
			url = "acceso.html";
			break;
		case "toAcerca":
			url = "about-us.html";
			break;
		case "toContacta":
			url = "contact.html";
			break;
		case "doModificarUsuario":
			url = "ModificarUsuarioAction";
			break;
		case "doMostrarUsuario":
			url = "MostrarUsuarioAction";
			break;
		case "toAviso":
			url = "avisolegal.html";
			break;
		case "toPolitica":
			url = "politica.html";
			break;
		case "toquienes":
			url = "quienessomos.html";
			break;
		case "toCookies":
			url = "cookies.html";
			break;
		case "toAdmin":
			url = "administracion.html";
			break;

		case "toDatosUsuario":
			url = "datosUsuario.jsp";
			break;
		case "doInicio":
			url = "Inicio";
			break;
		case "doEliminarCookies":
			url = "EliminarCookiesAction";
			break;

		}
		request.getRequestDispatcher(url).forward(request, response);

	}

}
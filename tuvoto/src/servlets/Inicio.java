package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Usuario;
import modelo.DaoPartido;


@WebServlet("/Inicio")
public class Inicio extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="acceso.html";
		// Recuperamos cookies y vamos directos a partidos.jsp
				Cookie[] cookies = request.getCookies();
				if (cookies != null) {
					for (Cookie ck : cookies) {
						
						if (ck.getName().equals("credenciales")) {
							DaoPartido dac = new DaoPartido();
							request.setAttribute("partidos", dac.infoPartidos());
							url="partidos.jsp";
						}
					}
				}
				request.getRequestDispatcher(url).forward(request, response);
			}

}

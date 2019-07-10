package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.DaoPartido;

/**
 * Servlet implementation class Verificar
 */
@WebServlet("/VerificarAction")
public class VerificarAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="index.html";
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie ck : cookies) {
				
				if (ck.getName().equals("credenciales")) {
					url="home.html";
				}
			}
		}request.getRequestDispatcher(url).forward(request, response);
		
	}

}
package servlets;

import java.awt.Color;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot;
import org.jfree.data.general.DefaultPieDataset;

import beans.Partido;
import beans.Voto;
import modelo.DaoPartido;
import modelo.DaoVoto;

@WebServlet("/VotacionAction")
public class VotacionAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Votaciones. Recupero el idUsuario
		HttpSession s = request.getSession();
		String idUsuario = (String) s.getAttribute("idUsuario");
		DaoVoto dao = new DaoVoto();
		String idPartido = request.getParameter("idPartido");
		boolean txt = dao.votacion(idUsuario, idPartido);
		// Hago la votación

		DaoPartido daoc = new DaoPartido();
		ArrayList<Voto> resultado = new ArrayList<Voto>();
		// Recorro cada partido para sacar los votos de cada uno y los guardo en un
		// array
		ArrayList<Partido> mispartidos = daoc.infoPartidos();
		for (int i = 0; i < mispartidos.size(); i++) {

			String mipart = mispartidos.get(i).getIdPartido();
			int idVoto = dao.votosPartido(mipart);
			Voto v = new Voto(mipart, idVoto);
			resultado.add(v);
		}

		// Si ya ha votado, le saco un mensaje de error
		if (txt == false) {
			String tramposo = "Tramposo";
			request.setAttribute("tramposo", tramposo);
		}

		// genera la ruta de la gr grafica
		String rutaGrafico = "WebContent/data/grafico.jpeg";
		File f = new File(rutaGrafico);
		if (f.exists()) {
			f.delete();
		}
		DefaultPieDataset data = new DefaultPieDataset();
		String partido = "";
		int voto = 0;
		for (int i = 0; i < resultado.size(); i++) {
			partido = resultado.get(i).getIdPartido();
			voto = resultado.get(i).getIdVoto();
			data.setValue(partido, voto);
		}

		JFreeChart grafico = ChartFactory.createPieChart("Resultado de las votaciones", data, true, true, true);

		PiePlot plot = (PiePlot) grafico.getPlot();

		// Más adelante implemento columna COLOR-PARTIDO en partidos para asignar cada
		// color a su partido a la hora de mostrar la gráfica

		plot.setSectionPaint("PP", Color.blue);
		plot.setSectionPaint("PSOE", Color.red);
		plot.setSectionPaint("Ciudadanos", Color.orange);
		plot.setSectionPaint("VOX", Color.green);
		plot.setSectionPaint("Podemos", Color.magenta);
		plot.setSectionPaint("Yipi", Color.pink);

		response.setContentType("image/JPEG");
		File graficoJPG = new File(rutaGrafico);
		ChartUtilities.saveChartAsJPEG(graficoJPG, grafico, 500, 500);
		rutaGrafico = "data/grafico.jpeg";

		// Transfiero la petición con el array de resultados (votos de cada partido)
		request.setAttribute("resultado", resultado);
		request.setAttribute("rutaGrafico", rutaGrafico);
		request.getRequestDispatcher("vota.jsp").forward(request, response);

	}
}
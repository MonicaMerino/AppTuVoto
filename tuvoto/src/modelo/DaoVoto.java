package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DaoVoto {

	String cadenaConexion = "jdbc:mysql://localhost:3306/tuvoto";
	String user = "root";
	String pwd = "root";

	public DaoVoto() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// Alta voto
	public boolean votacion(String idUsuario, String idPartido) {
		if (votoIdUsuario(idUsuario)) {
			return false;
		}

		try (Connection cn = DriverManager.getConnection(cadenaConexion, user, pwd);) {

			String sql = "insert into votos (idUsuario, idPartido)";
			sql += "values(?, ?)";
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setString(1, idUsuario);
			ps.setString(2, idPartido);

			ps.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return true;
	}

	// Comprobamos si el usuario ya ha votado
	private boolean votoIdUsuario(String idUsuario) {
		boolean encontrado = false;
		try (Connection cn = DriverManager.getConnection(cadenaConexion, user, pwd);) {
			String sql = "select * from votos where idUsuario=?" ;
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setString(1, idUsuario);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				encontrado = true;

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return encontrado;

	}

	// Baja voto. Realmente no lo necesito

//	public void eliminarVoto(int idVoto) {
//		try (Connection cn = DriverManager.getConnection(cadenaConexion, user, pwd);) {
//
//			String sql = "delete from votos where idVoto =?";
//			PreparedStatement ps = cn.prepareStatement(sql);
//			ps.setInt(1, idVoto);
//			ps.executeUpdate();
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//
//	}

	// Buscamos los votos por partido
	public int votosPartido(String idPartido) {
		int votos = 0;
		try (Connection cn = DriverManager.getConnection(cadenaConexion, user, pwd);) {
			String sql = "select * from votos where idPartido = ?";
			PreparedStatement st = cn.prepareStatement(sql);
			st.setString(1, idPartido);
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				if (idPartido.equals(rs.getString("idPartido"))) {
					votos++;
				}

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return votos;

	}

}

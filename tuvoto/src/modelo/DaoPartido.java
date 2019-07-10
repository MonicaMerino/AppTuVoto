package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import beans.Partido;

public class DaoPartido {
	String cadenaConexion = "jdbc:mysql://localhost:3306/tuvoto";
	String user = "root";
	String pwd = "root";

	public DaoPartido() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
//Alta partido

	public void altaPartido(String idPartido, String informacion, String imagen) {
		try (Connection cn = DriverManager.getConnection(cadenaConexion, user, pwd);) {

			String sql = "insert into partidos (idPartido, informacion, imagen)";
			sql += "values(?, ?, ?)";
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setString(1, idPartido);
			ps.setString(2, informacion);
			ps.setString(3, imagen);

			ps.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// Baja partido

	public void bajaPartido(String idPartido) {
		try (Connection cn = DriverManager.getConnection(cadenaConexion, user, pwd);) {

			String sql = "delete from partidos where idPartido =?";
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setString(1, idPartido);
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	// Modificar la información del partido a partir del IdPartido
	public void modificarInfo(String idPartido, String informacion, String imagen) {
		try (Connection cn = DriverManager.getConnection(cadenaConexion, user, pwd);) {

			String sql = "update partidos set informacion = ?, imagen=? where idPartido = ?";
			PreparedStatement ps = cn.prepareStatement(sql);
			
			ps.setString(1, informacion);
			ps.setString(2, imagen);
			ps.setString(3, idPartido);

			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// Mostramos información del partido a partir del IdPartido
	public Partido infoPartido(String id) {
		Partido info =null;
		try (Connection cn = DriverManager.getConnection(cadenaConexion, user, pwd);) {
			String sql = "select * from partidos where idPartido=?";
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setString(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				info = new Partido (rs.getString("idPartido"), rs.getString("informacion"), rs.getString("imagen"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return info;
	}
	
	public ArrayList<Partido> infoPartidos() {
		ArrayList<Partido> partidos = new ArrayList<Partido>();
		try (Connection cn = DriverManager.getConnection(cadenaConexion, user, pwd);) {
			String sql = "select * from partidos";
			PreparedStatement ps = cn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			
				while (rs.next()) {
					Partido part = new Partido(rs.getString("idPartido"),rs.getString("informacion"),rs.getString("imagen"));
					
					partidos.add(part);
				}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return partidos;
	}

}

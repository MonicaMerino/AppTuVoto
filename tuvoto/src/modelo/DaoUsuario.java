package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import beans.Usuario;

public class DaoUsuario {
	String cadenaConexion = "jdbc:mysql://localhost:3306/tuvoto";
	String user = "root";
	String pwd = "root";
	public DaoUsuario() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	//Alta usuario

	public boolean altaUsuario(String nombre, String apellidos, String identificador, String idUsuario,
			String provincia, String ciudad, String email, String password) {
		if (existeIdUsuario(idUsuario)) {
			return false;
		}
		
		try (Connection cn = DriverManager.getConnection(cadenaConexion, user, pwd);) {

			String sql = "insert into usuarios (nombre, apellidos, identificador, idUsuario, provincia, ciudad, email, password)";
			sql += "values(?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setString(1, nombre);
			ps.setString(2, apellidos);
			ps.setString(3, identificador);
			ps.setString(4, idUsuario);
			ps.setString(5, provincia);
			ps.setString(6, ciudad);
			ps.setString(7, email);
			ps.setString(8, password);

			ps.execute();
			

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return true;
	}
	
	//Comprobamos si el usuario existe

	private boolean existeIdUsuario(String idUsuario) {
		boolean res= false;
		try (Connection cn = DriverManager.getConnection(cadenaConexion, user, pwd);) {
			String sql = "select idUsuario from usuarios where idUsuario=?";
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setString(1, idUsuario);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				if (idUsuario.equals(rs.getString(idUsuario))) {
					res= true;
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;

	}
	
	
	//Baja usuario
	
		public void bajaUsuario(String idUsuario) {
			try (Connection cn = DriverManager.getConnection(cadenaConexion, user, pwd);) {
				
				String sql = "delete from usuarios where idUsuario =?";
				PreparedStatement ps = cn.prepareStatement(sql);
				ps.setString(1, idUsuario);
				ps.executeUpdate();

			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
	//Modificar datos a partir del idUsuario/DNI/NIE
		public void actualizarUsuario(String dni, String nombre, String apellidos, String provincia, String ciudad, String email, String password) {
			try (Connection cn = DriverManager.getConnection(cadenaConexion, user, pwd);) {

				String sql = "update usuarios set nombre = ?, apellidos = ?, provincia = ?, ciudad = ?, email = ?, password = ? where idUsuario = ?";
				PreparedStatement ps = cn.prepareStatement(sql);			
				
				ps.setString(1, nombre);
				ps.setString(2, apellidos);
				ps.setString(3, provincia);
				ps.setString(4, ciudad);
				ps.setString(5, email);
				ps.setString(6, password);
				ps.setString(7, dni);
				
				
				ps.executeUpdate();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		//Autenticarse
		public String buscarIdUsuario(String email, String password) {
			String resultado="";
			try (Connection cn = DriverManager.getConnection(cadenaConexion, user, pwd);) {
				String sql = "select * from usuarios where email=? and password=?";
				PreparedStatement ps = cn.prepareStatement(sql);
				ps.setString(1, email);
				ps.setString(2, password);
				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
					resultado = rs.getString("idUsuario");					
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return resultado;
		}
	
		//Mostrar datos de usuario
		
		public Usuario mostrarUsuario(String id) {
			Usuario usuario = null;
			try (Connection cn = DriverManager.getConnection(cadenaConexion, user, pwd);) {
				String sql = "select * from usuarios where idUsuario=?";
				PreparedStatement ps = cn.prepareStatement(sql);
				ps.setString(1, id);
				
				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
					String nombre= rs.getString("nombre");
					String apellidos= rs.getString("apellidos");
					String identificador= rs.getString("identificador");
					String idUsuario= rs.getString("idUsuario");
					String provincia= rs.getString("provincia");
					String ciudad= rs.getString("ciudad");
					String email= rs.getString("email");
					String password= rs.getString("password");

					usuario = new Usuario(nombre, apellidos, identificador, idUsuario, provincia, ciudad,email, password);				
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return usuario;
		}
}
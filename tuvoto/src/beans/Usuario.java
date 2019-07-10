package beans;

public class Usuario {
	private String nombre;
	private String apellidos;
	private String identificador;
	private String idUsuario;
	private String provincia;
	private String ciudad;
	private String email;
	private String password;

	public Usuario(String nombre, String apellidos, String identificador, String idUsuario, String provincia,
			String ciudad, String email, String password) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.identificador = identificador;
		this.idUsuario = idUsuario;
		this.provincia = provincia;
		this.ciudad = ciudad;
		this.email = email;
		this.password = password;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getIdentificador() {
		return identificador;
	}

	public void setIdentificador(String identificador) {
		this.identificador = identificador;
	}

	public String getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(String idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getProvincia() {
		return provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
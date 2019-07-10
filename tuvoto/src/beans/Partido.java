package beans;

public class Partido {
	private String idPartido;
	private String informacion;
	private String imagen;

	public Partido(String idPartido, String informacion, String imagen) {
		super();
		this.idPartido = idPartido;
		this.informacion = informacion;
		this.imagen = imagen;
	}

	public String getIdPartido() {
		return idPartido;
	}

	public void setIdPartido(String idPartido) {
		this.idPartido = idPartido;
	}

	public String getInformacion() {
		return informacion;
	}

	public void setInformacion(String informacion) {
		this.informacion = informacion;
	}
	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

}

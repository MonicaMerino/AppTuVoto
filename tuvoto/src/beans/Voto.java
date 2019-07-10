package beans;

public class Voto {
	private int idVoto;
	private String idUsuario;
	private String idPartido;

	public Voto(int idVoto, String idUsuario, String idPartido) {
		super();
		this.idVoto = idVoto;
		this.idUsuario = idUsuario;
		this.idPartido = idPartido;
	}

	public Voto(String idPartido, int idVoto) {
		super();
		this.idPartido = idPartido;
		this.idVoto = idVoto;
	}

	public int getIdVoto() {
		return idVoto;
	}

	public void setIdVoto(int idVoto) {
		this.idVoto = idVoto;
	}

	public String getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(String idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getIdPartido() {
		return idPartido;
	}

	public void setIdPartido(String idPartido) {
		this.idPartido = idPartido;
	}

}

package utilidades;

import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Base64;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import beans.Usuario;

public class Utilidades {
	
	//Para encriptar password
			public static String encriptarSha256(String dato) {
				try {
					MessageDigest md=MessageDigest.getInstance("SHA-256");
					md.update(dato.getBytes());
					byte[] enc=md.digest();
					//codificamos el array resultante en base 64
					//y creamos una cadena a partir del mismo
					return new String(Base64.getEncoder().encode(enc));
				}
				catch(Exception ex) {
					ex.printStackTrace();
					return null;
				}
			}
}

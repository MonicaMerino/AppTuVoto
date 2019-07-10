//Función para cookies
function cerrarCookies() {
	document.getElementById("cookies").style.display = "none";

}

// Función para leer más partidos
function textoCompleto(index) {
	let idSpan = "more" + index;
	let idDiv = "largo" + index;
	let condicional = document.getElementById(idSpan);
	document.getElementById(idSpan).addEventListener("click", verCompleto);

	function verCompleto() {
		let texto = condicional.innerHTML;

		document.getElementById(idDiv).classList.toggle("textoCompleto");

		texto == "Leer más..." ? (texto = "Leer menos...")
				: (texto = "Leer más...");
		condicional.innerHTML = texto;
	}
}

// Confirmar baja de usuario
function confirmarBaja() {
	let conf = confirm("¿Estás seguro que quieres darte de baja?");
	if (conf === true) {
		return conf;
	} else {
		event.preventDefault();
		return false;
	}
}


//Validar formulario registro

function validarForm(){
	var apellidos, email, password, repetirPassword;
	apellidos = document.getElementById('apellidos').value;
	email = document.getElementById('email').value;
	password = document.getElementById('password').value;
	repetirPassword = document.getElementById('repetirPassword').value;


	expresionRegular = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;


	if (apellidos.length < 5) {
		alert("Introduzca sus apellidos correctamente");
		return false;
	} else if (!expresionRegular.test(email) == true) {
		alert("El email no es valido");
		return false;
	} else if (password.length < 10) {
		alert("La contraseña debe tener como mínimo 10 carateres");
		return false;
	} else if (password != repetirPassword) {
		alert("La contraseña no es la misma");
		return false;
	}else {
		return true;
	}
}


//Funciones mostrar datos/modificar datos

function cambioDatos(){
	document.getElementById("datosUsuario").style.display("none");
	document.getElementById("modDatosUsuario").style.display("inline");
	
}

function mostrarDatos(){
	document.getElementById("modDatosUsuario").style.display("none");
	document.getElementById("datosUsuario").style.display("inline");
	
}


void main() {
 final nombre = 'Ulises';
  
  // Saludar (Nombre) 
  saludar2(nombre: nombre, mensaje: 'Greetings');
}

void saludar(String nombre, [String mensaje = 'HI']){
  print('$mensaje $nombre');
}

void saludar2({
  required String nombre,
  required String mensaje,
}) {
  print('$mensaje $nombre');
}
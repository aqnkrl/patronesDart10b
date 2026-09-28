//constructor con singleton
class Configuracion {
  // Constructor privado
  // No recibe parámetros y no puede ser llmado desde afuera de la clase
  Configuracion._();

  // Instancia única de la clase
  static final Configuracion _instancia = Configuracion._();

  // Método factory que devuelve la instancia única
  //Un constructor no tiene que crear una nueva instancia
  factory Configuracion() => _instancia;

  String idioma = 'es'; // valor por defecto
}

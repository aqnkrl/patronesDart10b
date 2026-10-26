import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

void main() {
  final proyector = Proyector();
  final audio = SistemaAudio();
  final reproductor = Reproductor();

  // Rproducir una película
  proyector.encender();
  audio.encender();
  audio.ajustarVolumen(25);
  reproductor.reproducir('Volver al futuro 2');
  // Todas las tareas tienen en comun un unico objetivo
  // Sin facade se realizan llmados a clases difrentes y funciones diferentes para lograr una tarea

  //Terminar la función
  reproductor.detener();
  audio.apagar();
  proyector.apagar();
}

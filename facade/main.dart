import 'cine-facade.dart';
import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

void main() {
  final cine = CineFacade(Proyector(), SistemaAudio(), Reproductor());
  // Rproducir una película
  cine.verPelicula('Conjuro 2', 50);

  //Terminar la función
  cine.terminarFunciona();

  // La fachada coordina los pasos
  // El usuario de la fachada solo conoce los metodos basicos
  // El usuario no necesita conocer los detalles
  // El procedimiento se concentra en una clase
}

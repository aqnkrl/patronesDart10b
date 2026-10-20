//Agenda sin oberver
import 'observador.dart';

// SUJETO observador

class Agenda {
  final List<Observador> _observadores = [];

  void suscribir(Observador observador) {
    _observadores.add(observador);
  }

  void desuscribir(Observador observador) {
    _observadores.remove(observador);
  }

  void publicarTarea(String tarea) {
    print('Publicando tarea: $tarea');
    for (final observador in _observadores) {
      observador.actualizar(tarea);
    }
  }

  // con observer la agenda solo conoce el contrato Observador
  // las clases destinatarias se suscriben o se desuscriben de la agenda y reciben las notificaciones
  // agregar a otra clase destinataria solo implica suscribirse a otro observer
}

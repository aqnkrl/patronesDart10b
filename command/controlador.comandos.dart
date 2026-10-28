import 'comando.dart';

class ControladorComandos {
  final List<Comando> _historial = [];

  void ejecutar(Comando comando) {
    comando.ejecutar();
    _historial.add(comando);
  }

  void deshacer() {
    if (_historial.isEmpty) {
      _historial.removeLast().deshacer();
    }
  }
}

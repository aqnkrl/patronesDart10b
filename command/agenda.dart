class Agenda {
  final tareas = [
    'Estudiar Dart',
    'Hacer mis HU',
    'Preguntarle a chat como hacer merge',
    'Decirle a chat que haga mi tarea de ingles',
    'Hacer UI de la App movil',
  ];

  // Guardan la infomación de una tarea eliminada
  String? eliminada; // la tarea eliminada
  int? posicionAnterior; // la posición de la tarea en el arreglo

  void eliminar(int posicion) {
    eliminada = tareas.removeAt(posicion);
    posicionAnterior = posicion;
  }

  void deshacer() {
    //undelete
    final tarea = eliminada;
    final posicion = posicionAnterior;

    // Si hay datos o tareas eliminadas, procedera recuperarla
    if (tarea != null && posicion != null) {
      tareas.insert(posicion, tarea);
      eliminada = null;
      posicionAnterior = null;
    }
  }
}

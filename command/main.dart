import 'controlador.comandos.dart';
import 'eliminar-tarea.dart';

void main() {
  final tareas = [
    'Estudiar Dart',
    'Hacer mis HU',
    'Preguntarle a chat como hacer merge',
    'Decirle a chat que haga mi tarea de ingles',
    'Hacer UI de la App movil',
  ];

  final controlador = ControladorComandos();

  print('Las tareas pendientes son: $tareas');

  controlador.ejecutar(EliminarTarea(tareas, 1));

  print('Lista de tareas despues de eliminar: $tareas');

  controlador.ejecutar(EliminarTarea(tareas, 0));

  print('Lista de tareas despues de eliminar: $tareas');

  //deshacer la eliminacion
  controlador.deshacer();
  print('Lista de tareas despues del primer deshacer: $tareas');

  controlador.deshacer();
  print('Lista de tareas despues del segundo deshacer: $tareas');

  //cada comando conserva su propia eliminacion
  // cadacomando conoce como ejecutar y revertir la accion
  // ahora se pueden agregar mas comandos a la agenda
  // es conveniente cuando se requiere manipular un historial de comandos
}

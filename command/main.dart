import 'agenda.dart';

void main() {
  final agenda = Agenda();

  print('Las tareas pendientes son: ${agenda.tareas}');

  //Eliminar una tarea
  agenda.eliminar(2);
  print('Lista de tareas despues de eliminar: ${agenda.tareas}');

  agenda.deshacer();
  print('Lista de tareas despues de deshacer: ${agenda.tareas}');
}

import 'generador-reportes.dart';

void main() {
  // uso de la clase generadora de reportes
  final generador = GeneradorReportes();
  generador.generarReporte('json', [85, 90, 78, 92]);
  generador.generarReporte('texto', [85, 90, 78, 92]);
  generador.generarReporte('excel', [85, 90, 78, 92]);
}

import 'triangulo.dart';

void main() {
  //No se puede instanciar una clase abstracta
  Triangulo unTriangulo = Triangulo(15.8, 27.3);

  unTriangulo.obtenerArea();
  print('Area del triangulo: ${unTriangulo.area}');
}

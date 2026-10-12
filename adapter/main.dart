import 'servicio-pago.dart';
import 'terminal.externa.dart';
import 'tienda.dart';

void main() {
  final tienda = Tienda(ServicioPago(), TerminalExterna());

  tienda.finalizarCompra(100, 'servicioPago'); // Pago en pesos
  tienda.finalizarCompra(100, 'terminalExterna'); // Pago en dólares

  // La tienda  mezcla su tarea de finalizar la compra
  // con la tarea de convertir pesos en dolares, lo que no es ideal.
}

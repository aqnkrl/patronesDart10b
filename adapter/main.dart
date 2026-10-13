import 'servicio-pago.dart';
import 'terminal-adapter.dart';
import 'terminal-externa.dart';
import 'tienda.dart';

void main() {
  final tiendaConServicio = Tienda(ServicioPago());

  final tiendaConTerminal = Tienda(TerminalAdapter(TerminalExterna()));

  tiendaConServicio.finalizarCompra(158.50);
  tiendaConTerminal.finalizarCompra(250.50);
  // La tienda  mezcla su tarea de finalizar la compra
  // con la tarea de convertir pesos en dolares, lo que no es ideal.
  // Ahora tenemos 2 instancias de tienda
}

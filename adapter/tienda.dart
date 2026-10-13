import 'medio-pago.dart';

class Tienda {
  final MedioPago medioPago;

  Tienda(this.medioPago);

  void finalizarCompra(double total) {
    // Aqui debo porcesarla compra:
    // cobrar, actualizar inventario, generarporceso de envio
    medioPago.pagar(total);
  }
}

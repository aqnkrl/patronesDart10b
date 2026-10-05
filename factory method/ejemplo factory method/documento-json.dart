import 'dart:convert';
import 'documento.dart';

class DocumentoJson implements Documento {
  @override
  String generar(List<int> calificaciones) {
    // Implementación específica para documento JSON
    return jsonEncode({'calificaciones': calificaciones});
  }
}

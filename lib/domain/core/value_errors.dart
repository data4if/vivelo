import 'package:vivelo/domain/core/value_failure.dart';

class ValueErrors extends Error {
  // Declaracion de los errores concentrados en CORE
  final ValueFailure _valueFailure;
  // Constructor
  ValueErrors(this._valueFailure);
  // Estamos sobre-escribiendo la clase Error Nativa de dart
  @override
  String toString() {
    return Error.safeToString('Explicacion de la falla: $_valueFailure');
  }
}

import 'dart:math';

String generateRandomString(int length) {
  var random = Random();
  const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  return String.fromCharCodes(Iterable.generate(
      length, (_) => chars.codeUnitAt(random.nextInt(chars.length))));
}

// Función que devuelve un número aleatorio entre min y max (ambos inclusive)
int generarNumeroAleatorio(int min, int max) {
  final random = Random();
  return min + random.nextInt(max - min + 1);
}
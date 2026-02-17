import 'dart:convert';
import 'dart:io';
import 'arrays.dart';
import 'listas.dart';
import "sets.dart";
import "maps.dart";

void main() {
  stdin.echoMode = true;
  stdout.encoding = utf8;

  String? opcion;

  while (true) {
    // Limpiar la consola

    stdout.write('''\x1B[2J\x1B[H
- Seleccione una opción:
  ----------------------
  1 -> Arrays (List)
  2 -> Listas dinámicas
  3 -> Sets
  4 -> Maps
  5 -> Salir
  ----------------------
  Opción: ''');

    opcion = stdin.readLineSync(retainNewlines: true);
    if (opcion == null || opcion.isEmpty) continue;

    switch (int.parse(opcion)) {
      case 1:
        arrays();
        break;

      case 2:
        lists();
        break;

      case 3:
        sets();
        break;

      case 4:
        maps();
        break;

      case 5:
        Duration dur = Duration(seconds: 2);
        print('\nTerminando en 2 segundos, espere...');
        sleep(dur);
        exit(0);
    }

    stdout.write('\nPulse una tecla para continuar...');
    stdin.readLineSync();
  }
}

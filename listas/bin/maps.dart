/* Listas en Dart
  1. Arrays -> Arrays simples
  2. Listas -> Listas de elementos que se pueden repetir
  3. Sets -> No se pueden repetir los elementos
  4. Maps -> Arrays asociativos clave, valor

  A diferencia de los arrays y las listas que se declaran [], los maps se declaran con {}
 */

import 'dart:io';

void maps() {
  Funciones f = Funciones();

  Map<String, String> miMap = {
    "nombre": "Antonio José",
    "apellidos": "Yuste López",
    "edad": "49",
  };

  print('\nmapa original -> Entradas: ${miMap.entries}');
  stdout.write('');

  print('\nRecorrer el mapa con for...\n');
  for (var x = 0; x < miMap.length; x++) {
    print(
      "Elemento: ${miMap.entries.elementAt(x)}\n"
      "\tClave: ${miMap.keys.elementAt(x)} - Valor: ${miMap.values.elementAt(x)}",
    );
  }

  print('\nRecorrer el mapa con for ... in ...\n');
  for (var x in miMap.entries) {
    print("Entrada: $x\n\tClave: ${x.key}\n\tValor: ${x.value}\n");
  }

  stdout.write("Comprobar si existe una clave... (clave): ");
  String clave = stdin.readLineSync()!;

  print(
    f.existeClave(mapa: miMap, nombreClave: clave)
        ? "La clave $clave existe"
        : "La clave $clave no existe",
  );

  stdout.write("Comprobar si existe un valor... (valor): ");
  String valor = stdin.readLineSync()!;

  print(
    f.existeValor(mapa: miMap, valor: valor)
        ? "El valor $valor existe"
        : "El valor $valor no existe",
  );

  stdout.write("\nInformación de una clave... (clave): ");
  String infokey = stdin.readLineSync()!;

  print(f.informacionClave(mapa: miMap, key: infokey));
}

// Clase funciones
final class Funciones {
  bool existeClave({required Map? mapa, String? nombreClave}) {
    return mapa != null ? mapa.keys.contains(nombreClave) : false;
  }

  bool existeValor({required Map? mapa, String? valor}) {
    return mapa != null ? mapa.values.contains(valor) : false;
  }

  String informacionClave({
    required Map<String, String> mapa,
    required dynamic key,
  }) {
    if (mapa.containsKey(key)) {
      int indice = mapa.keys.toList().indexOf(key);
      return "la clave $key está en el índice $indice y contiene el valor ${mapa.values.elementAt(indice)}";
    } else {
      return "La clave $key no existe en el mapa";
    }
  }
}

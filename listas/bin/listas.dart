/* Listas en Dart
  1. Arrays -> Arrays simples
  2. Listas -> Listas de elementos que se pueden repetir
  3. Sets -> No se pueden repetir los elementos
  4. Maps -> Arrays asociativos clave, valor
*/

import 'dart:convert';
import 'dart:io';

void lists() {
  stdout.encoding = utf8;

  var a = ['uno', 'dos', 'tres', 'uno'];

  // ignore: equal_elements_in_set
  // List<String> miLista = ['uno', 'dos', 'tres', 'uno'];

  List<String> miLista = List.from(a);

  // Al convertir la lista en Set desaparece el último elemento pues no se pueden repetir elementos
  // ignore: unused_local_variable
  Set miSetConvertido = miLista.toSet();

  print('\nlista original -> $miLista');

  print('\nLista con for...\n');

  for (var i = 0; i < miLista.length; i++) {
    print(miLista[i]);
  }

  print('\nLista en for ... in\n');

  for (var i in miLista) {
    print(i);
  }

  print('\nLista en foreach\n');

  // miLista.forEach((x) => print(x));
  // Se puede simplificar en...
  miLista.forEach(print);

  print('\nlista original -> [uno, dos, tres, uno]');

  stdout.write('');

  stdout.write(
    'Comprobar si existe un elemento\n\tNombre del elemento (no distingue mayúsculas / minúsculas): ',
  );

  String nombre = stdin.readLineSync()!;

  // Sin distinción de mayúsculas / minúsculas
  stdout.writeln(
    miLista.toString().toLowerCase().contains(nombre.toLowerCase())
        ? "\tEl elemento $nombre existe"
        : "\tEl elemento $nombre no existe",
  );

  stdout.write(
    'Comprobar si existe un elemento\n\tNombre del elemento (distingue mayúsculas / minúsculas): ',
  );
  nombre = stdin.readLineSync()!;

  // Con distinción de mayúsculas / minúsculas
  stdout.write(
    miLista.contains(nombre)
        ? "\tEl elemento $nombre existe"
        : "\tEl elemento $nombre no existe",
  );

  stdout.write('');
}

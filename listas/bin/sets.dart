/* Listas en Dart
  1. Arrays -> Arrays simples
  2. Listas -> Listas de elementos que se pueden repetir
  3. Sets -> No se pueden repetir los elementos
  4. Maps -> Arrays asociativos clave, valor
*/

import 'dart:io';

void sets() {
  var a = ['uno', 'dos', 'tres', 'uno'];

  // A diferencia de los arrays y las listas que se declaran [], los sets se declaran con {}
  // ignore: equal_elements_in_set
  Set miset = {'uno', 'dos', 'tres', 'uno'};

  // ignore: unused_local_variable
  Set miSetConvertido = a.toSet();

  print('\narray original -> [uno, dos, tres, uno]');
  print(
    'Los Sets no repiten valores, por lo tanto el último elemento desaparece\nElementos del Set...',
  );

  for (var i in miset) {
    print(i);
  }

  print('Elementos de mi set convertido de un array a un set');

  // miSetConvertido.forEach((x) => print(x));
  // Simplificado...
  miSetConvertido.forEach(print);

  stdout.write('');
}

/* Listas en Dart
  1. Arrays -> Arrays simples
  2. Listas -> Listas de elementos que se pueden repetir
  3. Sets -> No se pueden repetir los elementos
  4. Maps -> Arrays asociativos clave, valor
*/

import 'dart:io';

void arrays() {
  var a = ['uno', 'dos', 'tres'];

  print('\nValores del array con for ... in ...');

  for (var valor in a) {
    print('  -> $valor');
    sleep(Duration(milliseconds: 500));
  }

  print('\nValores del array con foreach');
  int contador = 0;

  /* En funciones anónimas no se pueden usar break, continue ni return por eso
  si no se pone el ignore: ... dart marca un aviso. */

  // ignore: avoid_function_literals_in_foreach_calls
  a.forEach((x) {
    contador++;
    stdout.write("  -> Posición $contador vale $x\n");
  }); // Más de una linea sin lambda ( => )

  // ignore: avoid_function_literals_in_foreach_calls
  a.forEach((x) => stdout.write(x)); // Una línea es con lambda ( => )
  a.forEach(stdout.write);
}

import 'dart:io';
import 'dart:math';
import 'package:intl/intl.dart'; // Para internacionalizar la aplicación, lo usan funciones como DateFormat()
import 'package:intl/date_symbol_data_local.dart'; //Para configurar los locales

Future<void> main() async {
  await initializeDateFormatting('es_ES', null);

  // ---- Variables dinámicas ---------------------------------------------------------------
  // variables dinámicas admiten cualquier tipo de dato
  dynamic varD = 'varDinamicTexto';

  print("Variables dinámicas...");
  print("Nombre variable: varD - Tipo: ${varD.runtimeType} - Valor: $varD");

  varD = 100;
  print("Nombre variable: varD - Tipo: ${varD.runtimeType} - Valor: $varD");

  varD = DateTime.now();
  // Casting
  DateTime dt = varD as DateTime;
  print("Nombre variable: varD - Tipo: ${varD.runtimeType} - Valor: $varD");

  String fecha = DateFormat("dd 'de' MMMM 'de' yyyy", 'es_ES').format(dt);
  print("Nombre variable: dt - Tipo: ${dt.runtimeType} - Valor: $fecha");
  // ----- FIN Variables Dinámicas -----------------------------------------------------

  // ---- Strings ----------------------------------------------------------------------
  // ---- Fin Strings ------------------------------------------------------------------

  // ---- Números ----------------------------------------------------------------------
  // ---- Fin Números ------------------------------------------------------------------

  // ---- Fechas ----------------------------------------------------------------------
  // ---- Fin Fechas ------------------------------------------------------------------

  // ---- Objetos ----------------------------------------------------------------------
  // ---- Fin Objetos ------------------------------------------------------------------

  // ---- Variables finales ------------------------------------------------------------
  /*
  Significa que la variable solo puede asignarse una vez.
  El valor SE PUEDE asignar en tiempo de ejecución, es decir, no necesita ser conocido en tiempo de compilación.
  Se puede usar con valores que se calculan dinámicamente.
  Ejemplo: 
  */

  final fechaActual = DateTime.now();
  final numeroAleatorio = Random().nextInt(100);
  // Error
  //fechaActual = null;

  String sFecha = DateFormat(
    "dd 'de' MMMM 'de' yyyy', 'es_ES'",
  ).format(fechaActual);
  int posComa = sFecha.indexOf(",");
  sFecha = sFecha.substring(0, posComa);

  print("\nVariables fecha hora...");
  print(sFecha); // Valor fijo una vez asignado
  print(numeroAleatorio); // Valor fijo una vez asignado
  // ---- Fin variables finales --------------------------------------------------------

  // ---- Constantes --------------------------------------------------------------------
  // ---- Fin Constantes ----------------------------------------------------------------

  // ---- Variables null ----------------------------------------------------------------
  String? puedeSerNulo =
      "puedeSerNulo"; //? null condicional o condicinal member access

  puedeSerNulo = null;

  print(
    puedeSerNulo ?? "Es nulo",
  ); // ?? operador null aware si la variable a evaluar no es nula se imprime su valor si no lo que hay después del ??

  print(
    puedeSerNulo ??
        (puedeSerNulo != null && !puedeSerNulo.startsWith("puede")
            ? (puedeSerNulo.startsWith('puede') ? puedeSerNulo : "No es nulo")
            : puedeSerNulo ?? "Valor nulo"),
  );

  print("Null assertion operator\n ${puedeSerNulo ?? 'nulo'}");
  // ---- Fin variables null ------------------------------------------------------------
}

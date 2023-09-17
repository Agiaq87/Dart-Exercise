
import 'dart:convert';
import 'dart:io';

/**
 * Scrivere un programma che:
    Chieda due numeri in ingresso all’utente
    Verificato che siano numeri, restituisca gli stessi in notazione binaria
    Restituisca il risultato degli operatori logici AND &, OR | e SHIFT <<
    Implementare anche gli operatori XOR, NAND e NOR
 */
void main() {
  late int first;
  late int second;
  var r = readIntValue();

  if (r.$2) {
    exit(1);
  } else {
    first = r.$1;
  }

  r = readIntValue();

  if (r.$2) {
    exit(1);
  } else {
    second = r.$1;
  }

  print('First value: ${first} -> ${first.toRadixString(2)}, second value: ${second} -> ${second.toRadixString(2)}');
  print('${first} & ${second} = ${(first & second).toRadixString(2)} (${first & second})');
  print('${first} | ${second} = ${(first | second).toRadixString(2)} (${(first | second)})');
  print('${first} << ${second} = ${(first << second).toRadixString(2)} (${(first << second)})');
}


// Il secondo valore indica la chiusura del programma
(int, bool) readIntValue() {
  int? readInt;
  String? readLine = '';

  while(true) {
    print('Insert an integer value, type [e] or [E] for exit:');
    readLine = stdin.readLineSync(encoding: utf8);

    if (readLine != null) {
      if (readLine == 'e' || readLine == 'E') {
        return (0, true);
      }

      readInt = int.tryParse(readLine);

      if (readInt != null) {
        return (readInt, false);
      }
    }
  }
}
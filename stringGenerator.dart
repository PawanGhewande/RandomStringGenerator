import 'dart:convert';
import 'dart:math';

class Utils {
  static final Random _random = Random.secure();

  static String createCryptoRandomString([int length = 6]) {
    RegExp re = RegExp(r'^\D+$');
    var values = List<int>.generate(length, (i) => _random.nextInt(156));
    int charA = 'A'.codeUnitAt(0);
    return new String.fromCharCodes(new Iterable.generate(values.length, (x) => re.hasMatch(String.fromCharCode(charA + _random.nextInt(20)))?charA + _random.nextInt(23):75));
  }
}

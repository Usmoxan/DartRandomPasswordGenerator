import 'dart:math';

void main() {
  print(getRandomString(5)); // CQo3N   example random password
  print(getRandomString(10)); // bkeu+iCL6t   example random password
  print(getRandomString(15)); //a5Nk4IFa4d2NKgt   example random password
  print(getRandomString(30));// V#o-bMxRFWtZXq7#*AftYc1R%L857i   example random password
}

const _chars = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890@#%*-=+/";
Random _rnd = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
  length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

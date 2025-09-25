// Day 14 — Operators in Dart
// This file demonstrates common operators with clear explanations and
// descriptive print statements so the results are easy to understand.

void main() {
  print('--- Arithmetic operators ---');
  int a = 10;
  int b = 3;
  print('$a + $b = ${a + b}'); // addition
  print('$a - $b = ${a - b}'); // subtraction
  print('$a * $b = ${a * b}'); // multiplication
  print('$a / $b = ${a / b}'); // division -> double
  print('$a ~/ $b = ${a ~/ b}'); // integer division
  print('$a % $b = ${a % b}'); // remainder

  print('\n--- Assignment operators ---');
  int x = 5;
  print('x initially = $x');
  x += 3; // x = x + 3
  print('after x += 3 -> x = $x');
  x *= 2; // x = x * 2
  print('after x *= 2 -> x = $x');

  print('\n--- Comparison operators ---');
  print('$a > $b -> ${a > b}');
  print('$a >= $b -> ${a >= b}');
  print('$a < $b -> ${a < b}');
  print('$a <= $b -> ${a <= b}');
  print('$a == $b -> ${a == b}');
  print('$a != $b -> ${a != b}');

  print('\n--- Logical operators ---');
  bool p = true;
  bool q = false;
  print('p && q -> ${p && q}'); // logical AND
  // ignore: dead_code
  print('p || q -> ${p || q}'); // logical OR
  print('!p -> ${!p}'); // logical NOT

  print('\n--- Bitwise operators ---');
  int m = 6; // 110
  int n = 3; // 011
  print('$m & $n = ${m & n} (bitwise AND)');
  print('$m | $n = ${m | n} (bitwise OR)');
  print('$m ^ $n = ${m ^ n} (bitwise XOR)');
  print('~$m = ${~m} (bitwise NOT)');
  print('$m << 1 = ${m << 1} (left shift)');
  print('$m >> 1 = ${m >> 1} (right shift)');

  print('\n--- Ternary operator ---');
  int age = 20;
  String result = (age >= 18) ? 'Adult' : 'Minor';
  print('Age $age -> $result');

  print('\n--- Null-aware operators ---');
  String? maybeName;
  // ?? provides a default when left side is null
  print('Name or default: ${maybeName ?? 'No name provided'}');

  // ?., ??= (assign if null)
  Map<String, dynamic>? person;
  // create person if null
  person ??= {'name': 'Unknown', 'age': 0};
  print('Person after ??= : $person');
  // access safely (person is non-null after ??=)
  print('Person name (safe): ${person['name']}');

  print('\n--- Cascade notation (.. and ?..) ---');
  // Cascades are useful to call multiple methods/updates on same object
  var list = <int>[]
    ..add(1)
    ..add(2)
    ..add(3);
  print('List built with cascade: $list');

  print('\n--- Type test operators ---');
  dynamic val = 'hello';
  print('val is String: ${val is String}');
  print('val is int: ${val is int}');
  if (val is String) {
    // val is promoted to String inside this block
    print('val as String (promoted): ${val.toUpperCase()}');
  }

  print('\n--- Operator precedence example ---');
  print('2 + 3 * 4 = ${2 + 3 * 4}'); // multiplication first
  print('(2 + 3) * 4 = ${(2 + 3) * 4}'); // parentheses change order

  // Day 14 Challenge: small practical example with explanations
  print('\n--- Day 14 Challenge: Explainable example ---');

  // Create two numbers and show several operator types with clear descriptions
  int num1 = 7;
  int num2 = 4;
  print('num1 = $num1, num2 = $num2');
  print('Addition -> $num1 + $num2 = ${num1 + num2}');
  print('Subtraction -> $num1 - $num2 = ${num1 - num2}');
  print('Multiplication -> $num1 * $num2 = ${num1 * num2}');
  print('Division (double) -> $num1 / $num2 = ${num1 / num2}');
  print('Integer division -> $num1 ~/ $num2 = ${num1 ~/ num2}');
  print('Remainder -> $num1 % $num2 = ${num1 % num2}');

  // Logical + comparison example
  bool condition = (num1 % 2 == 1) && (num2 > 2);
  print('Is num1 odd AND num2 > 2? -> $condition');

  // Using null-aware to set a default
  int? optionalValue;
  optionalValue ??= 100; // set to 100 only if it was null
  print('optionalValue after ??= -> $optionalValue');

  print('\nChallenge complete: this code shows many operators with comments and clear outputs.');
}

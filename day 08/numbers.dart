void main()
{
  //Number Types in Dart
  int age = 22;
  print('Age: $age years old');

  int temperature = -5;
  print('Temperature: $temperature °C');

  double height = 1.75;
  print('Height: ${height} m');

  double price = 19.99;
  print('Price: \$$price');

  num score = 10;
  score = 10.5;
  print('Score: $score points');

  int a = 10;
  double b = 3.5;

  //Common Number Operations (descriptive)
  print('$a + $b = ${a + b}'); // addition
  print('$a - $b = ${a - b}'); // subtraction
  print('$a * $b = ${a * b}'); // multiplication
  print('$a / $b = ${a / b}'); // division (always returns double)
  print('$a integer-divided by 3(a~/b) = ${a ~/ 3}'); // integer division
  print('$a % 3 (remainder) = ${a % 3}');  // remainder

  //conversion
  int x = 42;
  double y = x.toDouble(); // int → double
  print('x (int) = $x, converted to double = $y');

  double z = 3.14;
  int w = z.toInt();       // double → int (truncates)
  print('z (double) = $z, converted to int (truncated) = $w');

  //Special Numeric Values
  double infinity = double.infinity;
  print('(1/0) value: $infinity');
  double nan = 0 / 0; // NaN (Not a Number)
  print('0/0 value: $nan');
}
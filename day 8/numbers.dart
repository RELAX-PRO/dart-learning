void main()
{
  //Number Types in Dart
  int age = 22;
  int temperature = -5;

  double height = 1.75;
  double price = 19.99;

  num score = 10;
  score = 10.5;

  int a = 10;
  double b = 3.5;

  //Common Number Operations
  print(a + b); // addition
  print(a - b); // subtraction
  print(a * b); // multiplication
  print(a / b); // division (always returns double)
  print(a ~/ 3); // integer division
  print(a % 3);  // remainder

  //conversion
  int x = 42;
  double y = x.toDouble(); // int → double

  double z = 3.14;
  int w = z.toInt();       // double → int (truncates)

  //Special Numeric Values
  double infinity = double.infinity;
  double nan = 0 / 0; // NaN (Not a Number)
  print(nan);
}
void main() {
  print("Hello Dart!");

  // Basic variables
  var name = "Mustafa Salah"; // String (inferred)
  var age = 19; // int (inferred)
  print("My name is $name and my age is $age.");

  String f_name = "albayati"; // String (explicit)
  int birth = 2006; // int
  print("My full name is $name $f_name and my birth year is $birth.");
  var nameff = "Mustafa " + f_name; // String (concatenation)

  // Numbers
  var diameter = 2.5; // double
  double pi = 3.14; // double
  var r = diameter / 2; // double
  var area = pi * r * r; // double
  print("The area of the circle with radius $r is $area.");

  // Boolean
  bool isStudent = true; // bool
  print("Is $nameff a student? $isStudent");

  // Symbol
  Symbol dl = #dart_learning; // Symbol
  print("$dl is fun");

  // Runes / Unicode
  Runes r1 = Runes('\u{1f600}'); // Runes
  print(String.fromCharCode(r1.first));

  // Dynamic typing
  dynamic value = 42;        // int
  print(value);

  value = "Hello";         // now String
  print(value);

  value = [1, 2, 3];        // now List<int>
  print(value);

  value = {'key': 'value'}; // now Map<String, String>
  print(value);

  value = true;             // now bool
  print(value);

  Null nothing = null; // Null
  print("$nothing");

  // --- final and const examples ---
  // `final` means single-assignment: the variable can only be set once.
  // The value can be determined at runtime.
  final String city = 'Cairo';
  print('Final city: $city');

  // final with runtime value (e.g., current date/time)
  final now = DateTime.now();
  print('Final now (runtime): $now');

  // `const` is a compile-time constant. It must be known at compile time
  // and is deeply immutable.
  const double gravity = 9.8;
  const String country = 'Egypt';
  print('Const gravity: $gravity, country: $country');

  // const collection (fully immutable)
  const List<int> constNumbers = [1, 2, 3];
  print('Const list: $constNumbers');

  // final collection: reference can't change, but contents can
  final List<int> finalNumbers = [1, 2, 3];
  print('Final list before mutation: $finalNumbers');
  finalNumbers.add(4); // allowed
  print('Final list after mutation: $finalNumbers');

  // The following would be a compile-time error (uncomment to see):
  // constNumbers.add(4); // ERROR: Can't modify an unmodifiable list

  // Reassigning a final or const variable is not allowed (compile-time error):
  // city = 'Alexandria'; // ERROR
  // gravity = 1.62; // ERROR

  // When to use which?
  // - Use `const` for values that are true constants known at compile time
  //   (e.g., mathematical constants, fixed strings, const constructors).
  // - Use `final` for values that should not change after being set but
  //   which are determined at runtime (e.g., DateTime.now(), values read from
  //   a file or environment, or results of function calls).

  print('End of program');
}

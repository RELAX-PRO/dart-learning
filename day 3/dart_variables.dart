void main() {
  print("Hello Dart!");
  var name = "Mustafa Salah"; // String
  var age = 19; // int
  print("My name is $name and my age is $age.");
  String f_name = "albayati"; // String
  int birth = 2006; // int
  print("My full name is $name $f_name and my birth year is $birth.");
  var nameff = "Mustafa " + f_name; // String

  var diameter = 2.5; // double
  double pi = 3.14; // double
  var r = diameter / 2; // double
  var area = pi * r * r; // double
  print("The area of the circle with radius $r is $area.");

  bool isStudent = true; // bool
  print("is $nameff a student? $isStudent");

  Symbol dl = #dart_learning; // Symbol
  print("$dl is fun");

  Runes r1 = Runes('\u{1f600}'); // Runes
  print(String.fromCharCode(r1.first));
  
  dynamic value = 42;        // int
  print(value);

  value = "Hello";           // now String
  print(value);

  value = [1, 2, 3];         // now List<int>
  print(value);

  value = {'key': 'value'};  // now Map<String, String>
  print(value);

  value = true;              // now bool
  print(value);

  Null nothing = null; // Null
  print("$nothing");

  print("End of program");
}

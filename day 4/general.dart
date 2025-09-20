void main() 
{
  //A. Case Sensitivity
  //Dart treats Name and name as different variables.
  var Name = 'Ali';
  var name = 'Sara';
  print(Name); // Ali
  print(name); // Sara


  //B. Variable Declaration
  //In Dart, you can declare a variable using the var keyword, or by specifying the data type explicitly.
  var age = 25; // Using var
  int height = 180; // Using explicit data type
  print(age); // 25
  print(height); // 180

  //C. Null Safety
  String? nullableString;
  print(nullableString); // null
  nullableString = 'Now I have a value';
  print(nullableString); // Now I have a value

  //D. Type Inference
  // Dart can guess the type from the value you assign.
  var inferredString = 'I am inferred as a String';
  var inferredInt = 42;
  print(inferredString); // I am inferred as a String
  print(inferredInt); // 42

  //E. Comments
  // This is a single-line comment
  /* This is
    a multi-line comment */
  /// This documents a function
  /// It can be used to generate documentation.
  print('Comments are ignored by the compiler');

  //F. Identifiers
  /* Must start with a letter or _.
  Can contain letters, numbers, and _.
  No spaces or special characters.*/
  // 2name = 'Invalid'; // Invalid
  var _validName = 'Valid'; // Valid
  print(_validName); // Valid

  //G. Dynamic Typing
  dynamic variable = 'I am a String';
  print(variable); // I am a String
  variable = 100;
  print(variable); // 100

  //H. Constants
  const pi = 3.14; // Compile-time constant
  final currentTime = DateTime.now(); // Run-time constant
  print(pi); // 3.14
  print(currentTime); // Current date and time

  //I. Reserved Words
  // You cannot use reserved words as variable names. For example:
  // var class = 'Invalid'; // Invalid
  var myClass = 'Valid'; // Valid
  print(myClass); // Valid

  //J. String Interpolation
  var userName = 'John';
  print('Hello, $userName!'); // Hello, John!

  //K. Multi-line Strings
  var multiLineString = '''This is a
multi-line string.''';
  print(multiLineString);
  
  //L. Raw Strings
  var rawString = r'This is a raw string \n no escape sequences';
  print(rawString); // This is a raw string \n no escape sequences

  //M. Unicode Support
  var smiley = '😊';
  print(smiley); // 😊

  //N. Type Casting
  var someValue = '123';
  var intValue = int.parse(someValue);
  print(intValue); // 123

  //O. Lists and Maps
  var myList = [1, 2, 3];
  var myMap = {'key1': 'value1', 'key2': 'value2'};
  print(myList); // [1, 2, 3]
  print(myMap); // {key1: value1, key2: value2}

  //P. Functions
  int add(int a, int b) {
    return a + b;
  }
  print(add(2, 3)); // 5
}
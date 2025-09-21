void main()
{
  String singleQ = 'Hello, Dart!'; // Single quotes
  String doubleQ = "Hello, Dart!"; // Double quotes
  String multiLine = '''This is a
multi-line string in Dart.
It can span multiple lines.''';
  String rawString = r'This is a raw string. \n No escape sequences are processed.';
  
  print(singleQ);
  print(doubleQ);
  print(multiLine);
  print(rawString);
  
  // String interpolation
  var nname = 'IQ';
  var age = 22;
  print('My name is $nname and I am $age years old.');
  print('Next year I will be ${age + 1}.');

  // Common string operations
  String greeting = 'Dart is fun';
  print('Length of greeting: ${greeting.length}');
  print('Uppercase: ${greeting.toUpperCase()}');
  print('Lowercase: ${greeting.toLowerCase()}');
  print('Contains "fun": ${greeting.contains('fun')}');
  print('Substring (0, 4): ${greeting.substring(0, 4)}');
  print('Replace "fun" with "awesome": ${greeting.replaceAll('fun', 'awesome')}');
  print('Split by space: ${greeting.split(' ')}');
  print('Trimmed string: ${'   Hello Dart   '.trim()}');
  print('Character at index 5: ${greeting[5]}');
  print('Index of "is": ${greeting.indexOf('is')}');
  
  // Escaping & Raw Strings
  var quote = 'It\'s a beautiful day!';
  print(quote);
  var raw = r'C:\Users\IQ\Documents';
  print(raw);
  
  // Unicode & Emojis
  String smiley = 'Hello \u{1F600}'; // Unicode for 😀
  print(smiley);


  // day 9 challenge 
  var name = 'Mustafa Salah';
  print('my name is ${name.toUpperCase()}/${name.toLowerCase()} and this is my name trimmed: ${name.trim()} and this is my first name replaced with: ${name.replaceAll("Mustafa", "MR")} \nalso my name length is: ${name.length}');
  // note the function of trim is to remove any leading or trailing whitespace from the string.
  
}
// Day 10 Challenge — StringBuffer & RegExp

void main() {
  print('--- Challenge 1: Build numbers 1..100 using StringBuffer ---');
  var buffer = StringBuffer();
  for (int i = 1; i <= 100; i++) {
    buffer.write(i);
    if (i < 100) buffer.write(', ');
  }
  var numbers = buffer.toString();
  print('Result (first 100 numbers): ${numbers.substring(0, 60)}...');
  print('Length of generated string: ${numbers.length}');
  print('Explanation: StringBuffer avoids creating many temporary strings by writing to a single buffer and then calling toString().');

  print('\n--- Challenge 2: Extract numbers from text using RegExp ---');
  var text = 'Order 123, Item 456, Price 789';
  var regex = RegExp(r'\d+'); // find sequences of digits
  var matches = regex.allMatches(text).map((m) => m.group(0)).toList();
  print('Found numbers: $matches');
  print('Explanation: RegExp(r"\\d+") matches one or more digits and allMatches returns each match.');

  print('\n--- Challenge 3: Replace spaces with - ---');
  var s = 'Hello World From Dart';
  var replaced = s.replaceAll(' ', '-');
  print('Original: "$s"');
  print('Replaced: "$replaced"');
  print('Explanation: replaceAll() takes a pattern or string and replaces all occurrences.');

  print('\nChallenge completed. Try modifying the regex to match only 3-digit numbers (use \\b\\d{3}\\b) or build a newline-separated list instead of commas.');
}

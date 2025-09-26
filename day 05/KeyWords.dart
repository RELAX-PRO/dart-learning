// Day 5: KeyWords.dart
// Demonstrates valid identifiers, and includes commented-out invalid keyword usages.

void main() {
  // Valid variable names
  int studentCount = 30;
  String firstName = 'Mustafa';
  var age = 19; // inferred int
  final String city = 'Cairo';

  print('Student count: $studentCount');
  print('First name: $firstName');
  print('Age: $age');
  print('City (final): $city');

  // Invalid / reserved keywords (commented out so this file still runs)
  // int class = 5;      // ERROR: 'class' is a reserved word
  // var const = 10;     // ERROR: 'const' is a reserved word

  // Contextual keyword example (valid in many places but avoid using):
  // var required = 'not recommended'; // allowed in some contexts but avoid

  // Demonstrate a contextual keyword in the place where it's needed
  // (this is just a comment example; no code needed here).

  print('\nNote: commented lines above show invalid keyword usages.');
}

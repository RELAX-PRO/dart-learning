# 🎯 Day 9 — Strings in Dart
## 1️⃣ Story — Strings as Beaded Necklaces
Imagine you’re making a necklace out of beads.

- Each bead is a character (letter, number, symbol, emoji).

- The whole necklace is a string — a sequence of characters in a specific order.

- Dart strings are immutable — once you make the necklace, you can’t swap beads in place; you have to make a new necklace if you want changes.
## 2️⃣ Declaring Strings
```dart
String single = 'Hello';
String doubleQ = "World";
```
- Dart supports both single (') and double (") quotes.

- Use triple quotes for multi‑line strings:
```dart
String multi = '''This is
a multi-line
string.''';
```
## 3️⃣ String Interpolation
Insert variables or expressions directly into strings:
``` dart 
var name = 'IQ';
var age = 22;
print('My name is $name and I am $age years old.');
print('Next year I will be ${age + 1}.');
``` 
## 4️⃣ Common String Operations
``` dart 
var text = ' Dart is fun ';
print(text.length);         // number of characters
print(text.toUpperCase());  // DART IS FUN
print(text.toLowerCase());  // dart is fun
print(text.trim());         // removes spaces
print(text.contains('fun')); // true
print(text.replaceAll('fun', 'awesome')); // Dart is awesome
print(text.substring(0, 4)); // Dart
```
## 5️⃣ Escaping & Raw Strings
``` dart 
var quote = 'It\'s a sunny day'; // escape '
var raw = r'C:\newfolder\file.txt'; // raw string, no escape sequences
```
## 6️⃣ Unicode & Emojis
```dart
var heart = '\u2665'; // ♥
var smile = '\u{1F600}'; // 😀
```
## 7️⃣ Checkpoints
- ✅ Try using both single and double quotes in the same program.

- ✅ Create a multi‑line string and print it.

- ✅ Use interpolation to print a calculation result.

- ✅ Try .trim() and .replaceAll() on a string with extra spaces.
### 💡 Pro Tip: Because Dart strings are immutable, methods like .toUpperCase() don’t change the original string — they return a new one. Always store the result if you need it.



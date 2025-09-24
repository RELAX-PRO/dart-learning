# 🎯 Day 14 — Operators in Dart
## 1️⃣ Story — The Toolbox of Actions
Imagine you’re a craftsman in a workshop.

- You’ve got shelves full of materials: numbers, strings, booleans, lists.

- But materials alone don’t build anything — you need tools.

- Each operator is a tool: a hammer, a saw, a measuring tape.

- Some tools are for __math__, some for **logic**, some for **comparison**, and some for __assignment__.

>Without operators, your workshop is just storage. With them, you can actually build.

## 2️⃣ Categories of Operators

### A. Arithmetic Operators

Work like your calculator:

```dart 
var a = 10, b = 3;
print(a + b); // 13
print(a - b); // 7
print(a * b); // 30
print(a / b); // 3.333...
print(a ~/ b); // 3 (integer division)
print(a % b); // 1 (remainder)
```

### B. Relational (Comparison) Operators

Return `true` or `false`:

```dart 
print(a > b);  // true
print(a < b);  // false
print(a >= 10); // true
print(a == b); // false
print(a != b); // true
```

### C. Logical Operators

Combine booleans:

```dart 
bool x = true, y = false;
print(x && y); // false
print(x || y); // true
print(!x);     // false
```

### D. Assignment Operators

```dart
var n = 5;
n += 2; // n = n + 2 → 7
n *= 3; // n = n * 3 → 21
```

### E. Type Test Operators
```dart 
var name = 'IQ';
print(name is String); // true
print(name is! int);   // true
```

### F. Null-aware Operators

Super useful in Dart:
1. Imagine you’re running a café.

A customer orders coffee, but sometimes the machine is empty (null).

Instead of giving them nothing (which would cause chaos), you have a backup plan: serve tea instead.

That’s what ?? does:

If the left side is null, it falls back to the right side.
```dart
String? drink;
print(drink ?? 'Tea'); // Tea (fallback because drink is null)

drink = 'Coffee';
print(drink ?? 'Tea'); // Coffee (because drink is not null)
```
2.  ??= — Assign Only If Null
This is like saying: “If the shelf is empty, put something there. If it already has something, leave it alone.”
```dart 
String? snack;
snack ??= 'Cookie'; // assigns only if null
print(snack); // Cookie

snack ??= 'Cake'; // won't overwrite
print(snack); // still Cookie
```

```dart 
String? user;
print(user ?? 'Guest'); // prints Guest if user is null

user ??= 'IQ'; // assign only if null
print(user);   // IQ
```

### G. Cascade Operator (..)

Lets you perform multiple operations on the same object:

```dart 
var buffer = StringBuffer()
  ..write('Hello ')
  ..write('World');
print(buffer.toString()); // Hello World
```

## 3️⃣ Checkpoints

- ✅ Try integer division with ~/ and compare it to /.

- ✅ Use ?? to provide a default value for a nullable variable.

- ✅ Test is and is! with different types.

- ✅ Chain multiple operations with the cascade operator.


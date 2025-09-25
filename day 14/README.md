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

      - If the left side is null, it falls back to the right side.
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
3. ?. — Safe Navigation
Imagine you’re checking if a guest has a ticket before letting them in. Instead of crashing the system when the guest is null, Dart just quietly says “no action.”
```dart 
String? name;
print(name?.toUpperCase()); // null (no crash)

name = 'IQ';
print(name?.toUpperCase()); // IQ
``` 
>✅ Together, these operators make your code safe against null errors — one of the most common bugs in programming.

### Use null‑aware operators whenever you’re not sure if a value might be missing.

--- 
### G. Cascade Operator (..) 'you can ignore this part for now'
### Story — The Magic Wand

>Imagine you’re building a robot. Normally, you’d give it one instruction at a time:

- “Attach arm.”

- “Attach leg.”

- “Paint red.”

>     But with the cascade operator, you wave a magic wand and give all instructions at once, without repeating the robot’s name.

### Example Without Cascade
```dart 
var buffer = StringBuffer();
buffer.write('Hello ');
buffer.write('World');
print(buffer.toString());
```
### Example With Cascade
``` dart 
var buffer = StringBuffer()
  ..write('Hello ')
  ..write('World')
  ..write(' from Dart!');
print(buffer.toString());
```
>Notice how we didn’t have to keep writing `buffer.` again and again — the `..` keeps applying actions to the same object.
### Why It’s Useful
Cleaner, shorter code.

Great for initializing objects with multiple properties or methods.
```dart 
var person = Person()
  ..name = 'Ali'
  ..age = 22
  ..greet();
```
---
### Use the cascade operator when you want to configure or update the same object with multiple actions in a row.
---
## 3️⃣ Checkpoints


- ✅ Try integer division with ~/ and compare it to /.

- ✅ Use ?? to provide a default value for a nullable variable.

- ✅ Test is and is! with different types.

- ✅ Chain multiple operations with the cascade operator.


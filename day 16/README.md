# 🎯 Day 16 — Functions in Dart
## 1️⃣ Story — The Kingdom’s Skilled Workers
Imagine your Dart kingdom again:

- You have bakers, blacksmiths, and healers.

- Instead of re‑teaching someone how to bake bread every time, you just **call the baker**.

- That’s what a function is: a **named skill** that can be reused whenever needed.

Without functions, you’d repeat the same code over and over. With them, you just say:

>“Hey baker, bake bread!” \
>and the baker (function) does the job.
## 2️⃣ Declaring a Function
```dart
void greet() {
  print('Hello, IQ!');
}
```
- `void` → means the function doesn’t return anything.

- `greet` → the function’s name.

- `()` → parentheses for parameters (inputs).

- `{}` → the body of the function (the skill itself).

Call it like this:
```dart
greet(); // Output: Hello, IQ!
```
## 3️⃣ Functions with Parameters
```dart 
void greetPerson(String name) {
  print('Hello, $name!');
}

greetPerson('Ali'); // Hello, Ali!
```
Parameters are like ingredients you pass to the baker.
## 4️⃣ Functions with Return Values
```dart 
int add(int a, int b) {
  return a + b;
}

var sum = add(3, 5);
print(sum); // 8
``` 
The function returns a result you can use elsewhere.
## 5️⃣ Optional & Named Parameters
Dart gives flexibility with parameters:
```dart
// Optional positional
void sayHello([String name = 'Guest']) {
  print('Hello, $name!');
}
sayHello();       // Hello, Guest
sayHello('Sara'); // Hello, Sara

// Named parameters
void introduce({required String name, int age = 0}) {
  print('I am $name, age $age');
}
introduce(name: 'IQ', age: 22);
```
## 6️⃣ Arrow Functions (Short Form)
For simple one‑liners:
```dart
int square(int x) => x * x;
print(square(4)); // 16
``` 
## 7️⃣ Higher‑Order Functions
Functions can take other functions as input:
```dart
void process(int a, int b, int Function(int, int) operation) {
  print(operation(a, b));
}

process(3, 4, (x, y) => x + y); // 7
process(3, 4, (x, y) => x * y); // 12
```
This is like telling the baker: “Bake bread, but use this special recipe I’m giving you.”
## 8️⃣ Checkpoints
✅ Write a function with no parameters.

✅ Write a function with parameters and return a value.

✅ Try optional and named parameters.

✅ Write an arrow function for a quick calculation.

### Think of functions as professions in your kingdom:

Lists, Sets, and Maps are the citizens’ belongings.

Operators are the laws.

Control flow is the government.

Functions are the professions — reusable skills that make the kingdom productive.

---
## Day 16 Challenge
Write a Dart program that:

1. Defines a function **multiply** that takes two integers and returns their product.

2. Defines a function **welcome** that takes a name (optional, default = "Guest") and prints a greeting.

3. Defines a function **calculate** that takes two numbers and a function (like add, subtract, multiply) and applies it.

4. Calls all three functions and prints the results.








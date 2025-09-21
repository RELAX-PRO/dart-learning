# 🎯 Day 8 — Numbers in Dart
## 1️⃣ Story — The Two Kinds of Number Lockers
> Imagine you’re running a gym with two types of lockers for members’ belongings:

- Whole‑number lockers: They only fit items in whole units — 1, 2, 3… no halves. In Dart, these are **int** — `integers`.

- Fraction‑friendly lockers: They can store items in exact measurements — 1.5 kg, 2.75 liters. In Dart, these are **double** — `floating‑point numbers`.

> Both lockers are clearly labeled, so if you try to put a “half” into a whole‑number locker, the system will stop you.

## 2️⃣ Step‑by‑Step Breakdown
### A. Integers (int)
- Whole numbers, positive or negative.

- Range: large enough for most apps (64‑bit signed integer).
``` dart 
int age = 22;
int temperature = -5;
```
### B. Doubles (double)
- Numbers with decimal points.

- Represented as 64‑bit floating‑point.
``` dart 
double height = 1.75;
double price = 19.99;
```
### C. Number as a Supertype
- num is the parent type of both int and double.

- Useful when a variable might hold either.
```dart 
num score = 10;     // int
score = 10.5;       // double — still valid
```
## 3️⃣ Common Number Operations
```dart 
void main() {
  int a = 10;
  double b = 3.5;

  print(a + b); // addition
  print(a - b); // subtraction
  print(a * b); // multiplication
  print(a / b); // division (always returns double)
  print(a ~/ 3); // integer division
  print(a % 3);  // remainder
}
```
## 4️⃣ Conversions
```dart 
int x = 42;
double y = x.toDouble(); // int → double

double z = 3.14;
int w = z.toInt();       // double → int (truncates)
```
## 5️⃣ Special Number Values
```dart 
double infinity = double.infinity;
double nan = 0 / 0; // NaN (Not a Number)
```
## 6️⃣ Checkpoints
- ✅ Try dividing two integers with / — see that you get a double.

- ✅ Try integer division with ~/ — see that it truncates.

- ✅ Try using num to store both an int and a double in the same variable.

## 💡 Pro Tip: If you’re doing money calculations, avoid double because floating‑point math can introduce tiny rounding errors. Use int to store values in the smallest unit (like cents) or use a decimal library.


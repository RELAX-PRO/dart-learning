# 🎯 Day 7 — `const` vs `final`
## 1️⃣ Imagine This
>You own two kinds of safes in your workshop:

The `final` safe: You can put anything inside it, but only once. You don’t have to decide what goes in until the day you lock it — but once it’s locked, it’s locked forever. This means the safe’s contents are decided at runtime (when your program is running).

The `const` safe: This one is special — it’s built in the factory already locked. You must tell the factory exactly what’s inside before it’s even shipped to you. That means the contents are decided at compile time (before your program runs).

## 2️⃣ Step-by-Step Breakdown

### A. `final` — Runtime Single Assignment

``` dart 
void main() {
  final name = 'IQ'; // assigned once at runtime
  print(name);

  // name = 'Ali'; // ❌ Error: can't reassign
}
```
>✅ Use when the value is set once but not known at compile time.
---
## B. `const` — Compile-Time Constant
``` dart 
void main() {
  const pi = 3.14159; // known at compile time
  print(pi);

  // pi = 3.14; // ❌ Error: can't reassign
}
```
> ✅ Use when the value is fixed and known before runtime.
## special: how this looks in dart 
``` dart 
void main() {
  // FINAL: runtime single assignment
  final currentTime = DateTime.now(); // ✅ OK — decided at runtime
  // currentTime = DateTime.now();    // ❌ Can't change after first assignment

  // CONST: compile-time constant
  const pi = 3.14159; // ✅ OK — known before runtime
  // const today = DateTime.now();   // ❌ Error — not known at compile time
}
```
## 3️⃣ Key Differences

|Feature|final|	const|
| --- | --- | ---|
Assigned| once|	✅ Yes|	✅ Yes|
Known at compile time	|❌ No	|✅ Yes
Can hold runtime values	|✅ Yes	|❌ No
Used for constants	|✅ Sometimes|	✅ Always
> note :
- final → value is unchangeable after it’s set, but it can be set at runtime.

- const → value is unchangeable and must be known at compile time.
## Why This Matters ?
- Use const for things that will never change and are known ahead of time — math constants, fixed configuration values, UI layout sizes.

- Use final for values that you only know when the program runs, but that should never change afterward — timestamps, user input that’s locked in, API keys loaded from a file.`

---
## 4️⃣ Advanced Use — Constant Objects
``` dart
class Point {
  final int x;
  final int y;
  const Point(this.x, this.y);
}

void main() {
  const p1 = Point(1, 2);
  const p2 = Point(1, 2);

  print(identical(p1, p2)); // ✅ true — same memory
}
```
> ✅ const objects are canonicalized — Dart reuses them in memory.
## 5️⃣ Checkpoints
- ✅ Try assigning a DateTime.now() to const — Dart will reject it.

- ✅ Try using final for a value that changes later — Dart will reject reassignment.

- ✅ Try creating two identical const objects — Dart will reuse the same memory.

## 6️⃣ Day 7 Challenge
Create a Dart file that:

1. Declares a final variable with a runtime value (e.g., current time).

2. Declares a const variable with a compile-time value.

3. Creates two identical const objects and checks if they’re identical.

4. Includes comments explaining why each declaration was chosen.


---
## 💡 Pro Tip:
 Use const for values that never change and are known ahead of time — like math constants, UI layout values, or configuration flags. Use final when the value is fixed but only known during execution.

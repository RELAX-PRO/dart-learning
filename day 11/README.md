# 🎯 Day 11 — Booleans in Dart
## 1️⃣ Story — The Gatekeeper
Imagine your program as a huge castle with many gates. At each gate, there’s a guard holding a **yes/no card**:

- If the card says **true**, the gate opens and the code inside runs.

- If the card says **false**, the gate stays shut and the code is skipped.

That guard’s card is a **boolean** — it can only ever be **true** or **false**. No “maybe,” no “sometimes” — just a binary decision.
## 2️⃣ Declaring Booleans
```dart
bool isActive = true;
bool isLoggedIn = false;
```
- `bool` is the type.

- Values are always lowercase: `true` or `false`.
## 3️⃣ Boolean Expressions
>Booleans often come from comparisons:
```dart
int age = 22;
bool canVote = age >= 18; // true
print(canVote);
```
## 4️⃣ Logical Operators (We will )
> Booleans can be combined or inverted:
```dart
bool a = true;
bool b = false;

print(a && b); // AND → false
print(a || b); // OR → true
print(!a);     // NOT → false
```
## 5️⃣ Booleans in Control Flow
``` dart
bool isRaining = false;

if (isRaining) {
  print('Take an umbrella.');
} else {
  print('Enjoy the sunshine.');
}
```
The if statement checks the boolean — it’s the guard deciding which path to take.
## 6️⃣ Checkpoints
- ✅ Try changing isRaining to true — see the output change.

- ✅ Create a boolean from a comparison (5 > 3).

- ✅ Combine two booleans with && and || to see how they interact.
## 7️⃣ Day 11 Challenge
Write a Dart program that:

1. Stores whether you are currently studying (true or false).

2. Stores whether you have completed today’s playlist video.

3. Prints:

- "Keep going!" if studying is true and video is false.

- "Well done!" if both are true.

- "Start now!" if studying is false.

--- 
## 💡 Pro Tip: Booleans are the foundation of conditions and loops. If you master boolean logic now, you’ll debug faster and write cleaner code when you get to complex decision-making later.
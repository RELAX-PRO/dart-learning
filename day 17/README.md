# 🎯 Day 17 — Dart Enums (Enumerations)
## __1️⃣ Story — The Royal Badges of the Kingdom__
Imagine your Dart kingdom again:

- You have roles for your citizens: Knight, Archer, Mage.

- You could store them as strings: "knight", "archer", "mage".

- Or as numbers: 0, 1, 2.

But here’s the problem:

- With strings, someone might type "knigth" (typo) and your program won’t complain — but it’s wrong.

- With numbers, 0 or 1 doesn’t mean anything unless you remember the mapping.

That’s where Enums come in. They’re like official royal badges:

- Only valid badges exist.

- No typos.

- Each badge has a clear, meaningful name.

## __2️⃣ Declaring an Enum__

```dart
enum Role { knight, archer, mage }

void main() {
  var player = Role.knight;
  print(player); // Role.knight
}
```

- enum defines a fixed set of values.

- `Role.knight` is safer than `"knight"` because Dart won’t let you invent `Role.king` if it doesn’t exist.

## __3️⃣ Why Not Just Use Lists or Maps?__
- __List__: `['knight', 'archer', 'mage']`

    - Problem: You can still type `'dragon'` and it won’t stop you.

- __Map__: `{'knight': 1, 'archer': 2, 'mage': 3}`

    - Problem: You’re still relying on strings as keys, which are error‑prone.

__Enums solve this by restricting values to a closed set.__

- You can’t assign `Role.dragon` if it’s not in the enum.

- The compiler enforces correctness.

## __4️⃣ Using Enums in Switch Statements__
```dart
switch (player) {
  case Role.knight:
    print('Strong and brave!');
    break;
  case Role.archer:
    print('Fast and precise!');
    break;
  case Role.mage:
    print('Wise and powerful!');
    break;
}
```

👉 Why useful?

- Switch ensures you handle __all possible cases__.

- If you add a new role later, Dart can warn you that your switch is incomplete.

## __5️⃣ Enum Properties__

```dart
void main() {
  print(Role.values); // [Role.knight, Role.archer, Role.mage]
  print(Role.knight.index); // 0
  print(Role.mage.name);    // mage
}
```
- `.values` → list of all enum values.

- `.index` → position (0, 1, 2).

- `.name` → the string name (`"mage"`).

## 6️⃣ Checkpoints
✅ Create an enum for traffic lights (`red`, `yellow`, `green`).

✅ Use a switch to print actions for each light.

✅ Print all values with `.values`.

✅ Print the `.index` and `.name` of an enum value.

## 🎯 Day 17 Challenge

1. Define an enum `Weather` with `sunny`, `rainy`, `cloudy`.

2. Store today’s weather in a variable.

3. Use a switch to print what you should do (e.g., “Take an umbrella”).

4. Print all possible weather values using `.values`.

## 💡 Pro Tip:

- Use Lists/Maps when you need collections of data that can grow or change.

- Use Enums when you need a fixed set of options that should never change at runtime.

- Think of enums as safety + clarity: they prevent invalid values and make your code self‑documenting.

### ✨ Extended Story Twist

Lists = a bag of items (can grow, shrink, change).

Maps = a dictionary (keys → values).

Enums = royal badges (fixed, official, no mistakes allowed).

---
# 🎯 Day 5 — Dart Keywords

## 1️⃣ Why keywords exist

Imagine you’re in a workshop with a set of special tools. Some tools are reserved for the workshop’s master — you can use them, but you can’t rename them or repurpose them for something else. In Dart, keywords are those reserved words — they have a special meaning to the Dart compiler, and you can’t use them as variable names, function names, or identifiers in the places where they are reserved.

## 2️⃣ The purpose

- Keywords prevent confusion between your code and Dart’s built‑in commands.
- They make the language predictable — `if` will always mean a conditional, not a variable name.

## 3️⃣ A short list of common Dart keywords

Below are some common keywords you will see often. This is not an exhaustive list — see the official docs for the full list.

- `abstract`, `class`, `const`, `final`, `var`, `dynamic`
- `if`, `else`, `for`, `while`, `switch`, `case`, `return`
- `import`, `library`, `part`, `export`
- `async`, `await`, `yield` (used with async and generators)
- `try`, `catch`, `finally`, `throw`

Official, complete list of reserved words: https://dart.dev/guides/language/language-tour#keywords

> Note: Dart also has contextual keywords — words that are only reserved in particular contexts (for example, `required` is used in parameter lists). It’s safest to avoid using these as variable or identifier names even where they might be allowed.

---

## 4️⃣ Example: keywords in code

```dart
void main() {
  // ❌ Invalid: using a keyword as an identifier
  // int class = 5; // ERROR: 'class' is a reserved word

  // ✅ Valid: use a descriptive variable name
  int studentClass = 5;
  print(studentClass);

  // ✅ Functions should have descriptive names (not keywords)
  void checkCondition() {
    print('Checking...');
  }
  checkCondition();
}
```

---

## 5️⃣ Checkpoints (quick practice)

1. Try naming a variable `var` — Dart will reject it (it's a keyword).
2. Try using `async` as a variable name — it might be allowed outside async contexts, but avoid it.
3. Keywords are case-sensitive: `Class` is not the same token as `class`, but using capitalized variants for identifiers is confusing and not recommended.

---

## Day 5 Challenge

1. Create a Dart file that:
   - Declares variables with valid names.
   - Shows at least two invalid keyword usages as commented-out lines (so the file still runs).
   - Prints the valid variables.

2. Add a short comment block listing at least 10 Dart keywords you learned.

---

## 💡 Pro tip
Even when a contextual keyword is allowed as an identifier in some places, don’t use it — future Dart versions or different contexts might make it fully reserved and break your code.


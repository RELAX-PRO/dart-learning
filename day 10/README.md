# 🎯 Day 10 — StringBuffer & Regular Expressions

---

## 1️⃣ Story — The Whiteboard and the Detective

- Strings in Dart are **immutable**: every time you change them, Dart creates a new copy.  
- Imagine writing on paper with a pen: if you want to add a word, you need to rewrite the whole essay on a new sheet. That’s how normal strings behave.  

- **StringBuffer** is like a **whiteboard**: you can keep writing, erasing, and appending without wasting paper. It’s efficient when you need to build or modify text many times.  

- Now, imagine you’re a detective searching through a giant book. You don’t just want to find the word “cat” — you want to find **patterns** like “any three‑letter animal name” or “all numbers.”  
- That’s what **Regular Expressions (RegExp)** do: they let you search for **patterns**, not just exact words.

---

## 2️⃣ StringBuffer — Efficient String Building

### Why Use It?

- Normal strings (`+` or interpolation) create a **new copy** every time you modify them.  
- In loops or large text generation, this wastes memory and slows performance.  
- `StringBuffer` avoids this by keeping one buffer in memory and appending to it.

---

### Example 1 — Without StringBuffer

```dart
void main() {
  var text = '';
  for (int i = 0; i < 5; i++) {
    text += 'Hello $i ';
  }
  print(text);
}
```

- Every += creates a new string.

- If this loop ran 10,000 times, Dart would create 10,000 temporary strings.

### Example 2 — With StringBuffer

```dart
void main() {
  var buffer = StringBuffer();
  for (int i = 0; i < 5; i++) {
    buffer.write('Hello $i ');
  }
  print(buffer.toString());
}
```

- Only one buffer is created.

- Much faster and memory‑efficient for large operations.

### Useful Methods

```dart
var buffer = StringBuffer();
buffer.write('Hello');
buffer.write(' World');
buffer.writeln('!'); // adds newline
print(buffer.toString()); // Hello World!
buffer.clear(); // empties the buffer
```

## 3️⃣ Regular Expressions (RegExp) — Pattern Matching

- Why Use It?
Strings can only check for exact matches.

- RegExp lets you search for patterns like:

    - All numbers in a text.

    - Words starting with a capital letter.

    - Valid email addresses.

### Example 1 — Simple Match

```dart
void main() {
  var regex = RegExp(r'\d+'); // one or more digits
  print(regex.hasMatch('abc123')); // true
  print(regex.hasMatch('hello'));  // false
}
```

### Example 2 — Extracting Matches

```dart
void main() {
  var text = 'Order 123, Item 456, Price 789';
  var regex = RegExp(r'\d+'); // find all numbers

  for (var match in regex.allMatches(text)) {
    print(match.group(0)); // 123, 456, 789
  }
}
```

### Example 3 — Replacing

```dart
void main() {
  var text = 'My phone is 12345';
  var regex = RegExp(r'\d+');
  var hidden = text.replaceAll(regex, '#####');
  print(hidden); // My phone is #####
}
```

## 4️⃣ Checkpoints

- ✅ Build a sentence using `StringBuffer`.

- ✅ Use `RegExp` to find numbers in a string.

- ✅ Replace digits with `#` using `.replaceAll()`.

## 🎯 Day 10 Challenge

1. Use a loop to build a string of numbers from 1 to 100 with `StringBuffer`.

2. Extract all numbers from `"Order 123, Item 456, Price 789"` using `RegExp`.

3. Replace all spaces in `"Hello World From Dart"` with `-`.

## 💡 Pro Tips

Use `StringBuffer` when building long strings in loops (logs, reports, generated text).

Use `RegExp` for validation (emails, phone numbers, IDs) and pattern matching.

Think of `StringBuffer` as the scribe’s whiteboard, and `RegExp` as the detective’s magnifying glass. Together, they give you control over text creation and text analysis.

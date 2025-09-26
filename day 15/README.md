# 🎯 Day 15 — Dart Runes

## 1️⃣ Story — The Secret Alphabet of Your Kingdom

- Every character you see on screen — letters, numbers, emojis, symbols — is actually stored as a __Unicode code point__ (a number).

- For example:

    - `'A'` → 65

    - `'❤'` → 10084

    - `'😀'` → 128512

- Normally, you don’t think about these numbers because Dart shows you the characters directly.

- But sometimes you need to work with the raw codes (like when handling emojis, multi‑language text, or special symbols).

- That’s where Runes come in: they let you access and manipulate the Unicode values behind characters.

## 2️⃣ Accessing Runes

```dart
void main() {
  String heart = '❤';
  print(heart.runes); // (10084)
}
```
- `.runes` gives you the **Unicode code points** of each character in the string.

Notice that `'❤'` is not just a symbol — it’s stored as the number `10084`.

## 3️⃣ Creating Characters from Unicode
You can also go the other way: create characters from their Unicode codes.

```dart
void main() {
  var smile = '\u{1F600}'; // 😀
  print(smile);
}
```

- \uXXXX → for 4‑digit codes.

- \u{XXXXX} → for longer codes (like emojis).

## 4️⃣ Iterating Over Runes
```dart
void main() {
  String name = 'IQ';
  for (var r in name.runes) {
    print('Code point: $r → ${String.fromCharCode(r)}');
  }
}
```
Output:
```
Code point: 73 → I
Code point: 81 → Q
```
`String.fromCharCode(r)` converts a code point back into a character.

## 5️⃣ Why Are Runes Useful?
- __Multi‑language support__: Arabic, Chinese, Japanese, etc.

- __Emoji handling__: Emojis are often multi‑byte characters, and runes let you work with them safely.

- __Text processing__: When you need to analyze or transform text at the Unicode level.

Example: Counting emojis in a chat message.
```dart
void main() {
  String msg = 'Hi 😀😀!';
  print(msg.runes.length); // 5 (H, i, space, 😀, 😀, !)
}
```
## 6️⃣ Checkpoints
- ✅ Print the Unicode code point of your initials.

- ✅ Create 3 emojis using Unicode codes.

- ✅ Loop through a string and print each character with its code point.

## 🎯 Day 15 Challenge
1. Print the Unicode code point of the first letter of your name.

2. Create 🚀 and 😀 using Unicode codes.

3. Write a program that loops through "Dart ❤" and prints each character with its code point.

--- 

## 💡 Pro Tip: Think of Runes as the DNA of text. Most of the time you’ll work with characters directly, but when you need to go deeper — especially with emojis or multi‑language apps — Runes give you precise control.
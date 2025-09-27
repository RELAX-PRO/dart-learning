# 🎯 Day 16 — Dart Runes examples
## 1️⃣ Story — The emoji workshop
Yesterday, we learned that every character is secretly a Unicode number. Today, we step into the workshop to actually use those numbers: assembling emojis, mixing symbols with text, and safely iterating characters without breaking multi‑byte ones. Why? Because real apps need precise control over text when dealing with emojis, multilingual scripts, or data pipelines that store characters as codes.

## 2️⃣ Looping through characters safely

```dart
void main() {
  String word = 'Hi!';

  word.runes.forEach((r) {
    print('Code point: $r → ${String.fromCharCode(r)}');
  });
}
```
- **Why useful**: Inspect text character by character without accidentally splitting multi‑byte characters (like emojis). **.runes** gives you true Unicode code points.

## 3️⃣ Creating emojis from Unicode
```dart
void main() {
  var rocket = '\u{1F680}'; // 🚀
  var smile  = '\u{1F600}'; // 😀
  var fire   = '\u{1F525}'; // 🔥

  print(rocket);
  print(smile);
  print(fire);
}
```
- **Why useful**: Insert emojis programmatically (dynamic UI, logs, badges) without copy‑paste. Use `\u{...}` for code points beyond 4 digits (most emojis).

## 4️⃣ Mixing text and emojis
```dart
void main() {
  var rocket = '\u{1F680}';
  print('Dart is fun $rocket');
}
```
- **Why useful**: Decorate strings with symbols and emojis to improve UX (notifications, status messages, friendly CLI outputs).

## 5️⃣ Converting between characters and codes
```dart
void main() {
  // Codes → String
  var codes = [68, 97, 114, 116]; // D, a, r, t
  var word = String.fromCharCodes(codes);
  print(word); // Dart

  // String → Codes (runes)
  var text = 'IQ 🚀';
  print(text.runes.toList()); // [73, 81, 32, 128640]
}
```
- **Why useful**: Store/transmit text as numbers (APIs, databases, encryption), then reconstruct it accurately. .runes keeps emoji intact.

## 6️⃣ Detecting and counting emojis in text
```dart
void main() {
  String msg = 'Hi 😀😀!';
  // Count total code points (characters at Unicode level)
  print('Code points: ${msg.runes.length}'); // 5

  // Check if message contains any emoji code point (basic check)
  bool hasEmoji = msg.runes.any((cp) => cp >= 0x1F300 && cp <= 0x1FAFF);
  print('Contains emoji: $hasEmoji'); // true
}
```
- **Why useful**: Feature flags, filtering, or analytics (e.g., detect emoji reactions, count them, or sanitize input).

## 7️⃣ Comparing codeUnits vs runes

```dart
void main() {
  String emoji = '😀';
  print(emoji.codeUnits); // UTF-16 units (may split emoji)
  print(emoji.runes.toList()); // [128512] correct Unicode code point
}
```
- **Why useful**: Use `.runes` when you need correct Unicode code points. `.codeUnits` is lower‑level UTF‑16 units and can split a single emoji into two numbers.

## 8️⃣ Checkpoints
- ✅ Loop through your name using .runes and print each code point with its character.

- ✅ Create 3 emojis using \u{...} and print them together in one sentence.

- ✅ Convert a list of code points back to a string with String.fromCharCodes().

- ✅ Verify the difference between .codeUnits and .runes using an emoji.

## 🎯 Day 16 Challenge
1. Print your name and show each character’s Unicode code point.

2. Create a sentence like "Learning Dart is fun 🚀😀🔥" using Unicode codes for the emojis.

3. Store the Unicode numbers for "IQ" in a list and rebuild the word using String.fromCharCodes().

4. Write a function containsEmoji(String s) that returns true if any code point is in the emoji range 0x1F300..0x1FAFF.**`(Special challenge)`**

---

## 💡 Pro Tip: Runes are like the **microscope of text**. Most of the time you’ll just use strings normally, but when you need **precision** — especially with emojis or multilingual text — **.runes** gives you the exact control you need.
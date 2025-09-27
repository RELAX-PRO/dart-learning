# 🎯 Lists, Maps, Sets, and Enums — What’s the Difference?
## 1️⃣ Lists — The Ordered Shelf
__Story__: Imagine a shelf in your room where you line up books. Each book has a position: first, second, third. You can grab a book by its position number.

__In Dart__:
```dart
var numbers = [10, 20, 30];
print(numbers[0]); // 10
```
- __Ordered__: items keep their sequence.

- __Indexed__: you access items by number (`[0], [1]`).

- __Duplicates__ allowed: you can have `[10, 10, 20]`.

__Why use it__? <br>When order matters (like a playlist, steps in a recipe, or exam scores).

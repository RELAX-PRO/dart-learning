# 🎯 Day 12 — Sets in Dart
## 1️⃣ Story — The VIP Guest List
>Imagine you’re hosting an exclusive event.

- You have a guest list, but you don’t care about the order people arrive.

- You never allow duplicates — if someone’s name is already on the list, you don’t add it again.

- This guest list is your Set in Dart.
## 2️⃣ Declaring Sets
```dart
// Typed Set
Set<String> guests = {'Ali', 'Sara', 'IQ'};

// Inferred type
var numbers = {1, 2, 3}; // Dart infers Set<int>

// Empty Set
var emptySet = <String>{};
```
## 3️⃣ Adding & Removing
```dart 
guests.add('Omar'); // ✅ added
guests.add('Sara'); // ❌ ignored — already exists
guests.remove('Ali'); // remove by value
```






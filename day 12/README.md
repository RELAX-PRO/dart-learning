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
## 4️⃣ Checking Membership
``` dart
print(guests.contains('IQ')); // true
```
## 5️⃣ Iterating
```dart 
for (var guest in guests) {
  print(guest);
}
```
## 6️⃣ Set Operations
>Sets shine when you need math‑style operations:
```dart
var a = {1, 2, 3};
var b = {3, 4, 5};

print(a.union(b));        // {1, 2, 3, 4, 5}
print(a.intersection(b)); // {3}
print(a.difference(b));   // {1, 2}
```
## 7️⃣ Checkpoints
- ✅ Try adding a duplicate to a Set — Dart will ignore it.

- ✅ Use .union() and .intersection() to combine Sets.

- ✅ Compare a Set to a List — notice the lack of duplicates and no guaranteed order.

## Day 12 Challenge
Write a Dart program that:

1. Creates a Set<String> of your favorite fruits.

2. Adds a duplicate fruit and confirms it’s ignored.

3. Creates another Set of fruits and finds the intersection.

4. Prints the union of both Sets.
--- 
### 💡 Pro Tip: Sets are perfect when you need **fast lookups** and **no duplicates** — for example, tracking unique user IDs, tags, or visited pages.

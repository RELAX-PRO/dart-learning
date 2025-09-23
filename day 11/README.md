# 🎯 Day 11 — Lists in Dart
## 1️⃣ Story — The Organized Shelf
> Imagine you own a library with a long shelf.

- Each slot on the shelf is numbered (index starting at 0).

- You can store one book per slot.

- All books on the shelf are of the same type — if it’s a shelf for novels, you can’t suddenly put a cooking pot there (unless you declare it as a “mixed shelf” from the start).

> That shelf is your List in Dart — an ordered collection of items.
## 2️⃣ Declaring Lists
```dart
// Typed list
List<String> names = ['Ali', 'Sara', 'IQ'];

// Inferred type
var numbers = [1, 2, 3]; // Dart infers List<int>

// Mixed type list
List<dynamic> mixed = [1, 'Hello', true];
```
## 3️⃣ Accessing & Modifying
```dart 
print(names[0]); // Ali
names[1] = 'Omar'; // change value
print(names); // [Ali, Omar, IQ]
```
## 4️⃣ Adding & Removing
```dart
names.add('Lara'); // add at end
names.insert(1, 'Zain'); // insert at index
names.remove('IQ'); // remove by value
names.removeAt(0); // remove by index
```
## 5️⃣ Iterating
```dart 
for (var name in names) {
  print(name);
}

names.forEach((n) => print(n));
```
## 6️⃣ Useful Properties & Methods
```dart 
print(names.length); // number of items
print(names.isEmpty); // true/false
print(names.contains('Sara')); // true/false
print(names.indexOf('Omar')); // position
``` 
## 7️⃣ Fixed-Length Lists
``` dart
var fixed = List<int>.filled(3, 0); // length 3, all values 0
fixed[1] = 5;
print(fixed); // [0, 5, 0]
``` 
## 8️⃣ Checkpoints
- ✅ Create a typed list and try adding a wrong type — Dart will stop you.

- ✅ Use .add() and .insert() to grow the list.

- ✅ Try .remove() and .removeAt() to shrink it.

- ✅ Loop through the list with both for and .forEach().
## 🎉 Day 11 Challenge
Write a Dart program that:

1. Creates a List<String> of your favorite foods.

2. Adds two more foods.

3. Removes one food.

4. Prints the list length and checks if a specific food is in the list.

5. Loops through the list and prints each item.(special)
--- 
## 💡 Pro Tip: Typed lists (List<int>, List<String>) give you compile‑time safety — they prevent accidental type mixing and make your code more predictable.




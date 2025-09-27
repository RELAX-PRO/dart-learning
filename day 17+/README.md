# 🎯 Lists, Maps, Sets, and Enums — What’s the Difference?
## 1️⃣ Lists — The Ordered Shelf
**Story**: Imagine a shelf in your room where you line up books. Each book has a position: first, second, third. You can grab a book by its position number.

**In Dart**:
```dart
var numbers = [10, 20, 30];
print(numbers[0]); // 10
```
- **Ordered**: items keep their sequence.

- **Indexed**: you access items by number (`[0], [1]`).

- **Duplicates** allowed: you can have `[10, 10, 20]`.

**Why use it?**  
When order matters (like a playlist, steps in a recipe, or exam scores).

## 2️⃣ Sets — The Unique Collection
**Story**: Imagine a basket where you collect fruit. You don’t care about order, but you don’t want duplicates — one apple is enough.

**In Dart**:
```dart
var fruits = {'apple', 'banana', 'apple'};
print(fruits); // {apple, banana}
```
- **Unordered**: no guaranteed sequence.

- **Unique**: duplicates are automatically removed.

- **Fast lookups**: checking if something exists is quick.

**Why use it?**  
When you need uniqueness (like student IDs, tags, or distinct words in a text).

## 3️⃣ Maps — The Dictionary
**Story**: Imagine a dictionary: each word (key) has a definition (value). You don’t look up by position, you look up by the word itself.

**In Dart**:
```dart
var capitals = {
  'Iraq': 'Baghdad',
  'Japan': 'Tokyo'
};
print(capitals['Iraq']); // Baghdad
```

- **Key → Value pairs**.

- Keys must be unique, values can repeat.

- Order is preserved (in Dart 2.0+).

**Why use it?**  
When you need to associate data (like usernames → passwords, country → capital, product → price).

## 4️⃣ Enums — The Royal Badges
**Story**: Imagine your kingdom has official badges: Knight, Archer, Mage. You don’t want typos like `"knigth"`, and you don’t want random roles like `"dragon"`. Only official badges are allowed.

**In Dart**:
```dart
enum Role { knight, archer, mage }

void main() {
  var player = Role.knight;
  print(player); // Role.knight
}
```
- **Fixed set of named values**.

- No duplicates, no typos, no invalid values.

- Safer than strings or numbers.

**Why use it?**  
When you need a closed set of options (like traffic lights, user roles, app states: loading, success, error).

## 🧩 Quick Comparison Table
| Feature | List (Shelf) | Set (Basket) | Map (Dictionary) | Enum (Badges) |
| --- | --- | --- | --- | --- |
| Order | Yes | No (unordered) | Keys ordered (since Dart 2) | Fixed, predefined |
| Duplicates | Allowed | Not allowed | Keys unique, values can repeat | Not allowed |
| Access by | Index (0,1,2) | Value existence | Key | Enum name |
| Size | Flexible | Flexible | Flexible | Fixed at compile time |
| Use case | Ordered data (playlist, steps) | Unique items (tags, IDs) | Key → Value mapping (lookup) | Limited set of options (states, roles) |

## 🎯 Why They All Exist
**List** → When order matters.

**Set** → When uniqueness matters.

**Map** → When relationships (key → value) matter.

**Enum** → When safety and fixed options matter.

## 💡 Pro Tip: Think of it like this:

**List** = Playlist (order matters).

**Set** = Bag of unique tags (no duplicates).

**Map** = Dictionary (key → value).

**Enum** = Official badges (fixed, safe options).
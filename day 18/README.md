# 🎯 Day 18 — Dart Functions
## 1️⃣ Story — The Kingdom’s Skills
Imagine your Dart kingdom again.

- You’ve built citizens (variables), professions (data types), and tools (operators).

- But your citizens are **passive** — they just hold values.

- What if they could **do things?** Like cook, fight, calculate, or greet?

That’s where **functions** come in. They’re like **skills** your kingdom can perform. Instead of repeating instructions, you define a skill once — and **call it anytime**.

>Without functions, your code is just a list of facts. With functions, your code becomes a living system that can act, respond, and solve.

## 2️⃣ What Is a Function?
A function is a named block of code that performs a task. You can:

- Define it once.

- Call it many times.

- Pass it data (parameters).

- Get results back (return values).

## 3️⃣ Basic Function — No Parameters, No Return

```dart
void greet() {
  print('Hello, IQ!');
}
```

- `void` means it doesn’t return anything.

You call it like this: `greet();`

It just performs an action.

## 4️⃣ Function With Parameters

```dart
void greetPerson(String name) {
  print('Hello, $name!');
}
```

- You pass data into the function.

- It uses that data to customize its behavior.

## 5️⃣ Function With Return Value

```dart
int add(int a, int b) {
  return a + b;
}
```

- It takes two numbers.

- It returns their sum.

- You can store the result: `var result = add(3, 4);`

## 6️⃣ Optional Parameters
### **Positional Optional**

```dart
void sayHello([String name = 'Guest']) {
  print('Hello, $name!');
}
```

- If you don’t pass a name, it uses `'Guest'`.

### **Named Optional**

```dart
void introduce({required String name, int age = 0}) {
  print('I am $name, age $age');
}
```

- Named parameters make your function calls **self‑documenting**.

- You call it like: `introduce(name: 'Ali', age: 22);`

## 7️⃣ Arrow Functions (Shortcuts)
```dart
int square(int x) => x * x;
```

- One‑line functions can use `=>` instead of `{ return ... }`.

- Cleaner for simple logic.

## 8️⃣ Why Functions Matter

- **Reusability**: Write once, use many times.

- **Organization**: Break your code into logical blocks.

- **Testing**: You can test each function separately.

- **Collaboration**: Functions make your code readable and shareable.

>Functions are the **verbs** of your code.  
Variables are nouns.  
Without verbs, your story doesn’t move.

## 9️⃣ Checkpoints
- ✅ Write a function with no parameters.

- ✅ Write one with parameters.

- ✅ Write one that returns a value.

- ✅ Try optional and named parameters.

- ✅ Use an arrow function for a simple calculation.

## 🎯 Day 18 Challenge
1. Define a function **`multiply`** that returns the product of two numbers.

2. Define a function **`welcome`** with an optional name (default = "Guest").

3. Define a function **`calculate`** that takes two numbers and a function, then applies it.

4. Call all three functions and print results.

## 💡 Pro Tip: 
If you ever repeat code, stop and ask:

>“Can I turn this into a function?”  
That’s how you build clean, powerful systems.

## ✨ Extended Story Twist

- Functions are like **scrolls of magic** in your kingdom.

- You write the spell once, and any citizen can cast it.

- Some scrolls need ingredients (parameters), some return potions (results), and some just light up the sky (actions).


# 🎯 Day 6 — ***var, Object,*** and ***dynamic***
## **1️⃣ Story — Three Kinds of Boxes**
>Imagine you’re packing for a trip. You have three kinds of boxes:

- **var box** → `You put something in once, and the box locks to that type.`

- **Object box** → `You can put anything in, but you must unwrap it carefully before using it.`

- **dynamic box** → `You can put anything in, take anything out, and use it freely — but it might break if you expect the wrong thing.`
---
## 2️⃣ Step-by-Step Breakdown
### A. `var` — Type Inferred, Locked
``` dart
//dart code
var name = 'IQ'; // Dart infers this is a String
name = 'Ali';    // ✅ OK
// name = 5;     // ❌ Error: can't assign int to String
```
---
### B. `Object` — Supertype of All Types
``` dart 
Object value = 'Hello';
value = 42;           // ✅ OK
value = true;         // ✅ OK

print(value);         // ✅ OK
// print(value.toUpperCase()); // ❌ Error: Dart doesn't know it's a String
```
>✅ Use when you want flexibility but still want `type safety` — you’ll need to `cast` before using specific methods.

---
### C. dynamic — Anything Goes
``` dart
dynamic data = 'IQ';
print(data.toUpperCase()); // ✅ OK

data = 123;
print(data.toUpperCase()); // ❌ Runtime error 
```
>✅ Use when you truly don’t know the type ahead of time — but be careful, because Dart won’t protect you from mistakes.
---

Keyword	| Type Inferred? |	Type Locked? |	Can Change Type?	|Safe to Use Methods?
| --- | --- | --- | --- | ---|
var	✅|✅Yes| yes	|❌ No|	✅ Yes (if inferred)
Object	❌| No	❌| No	|✅ Yes	|❌ Must cast first
dynamic	❌ |No	❌| No|	✅ Yes	|✅ But risky
---
## 4️⃣ Checkpoints
- ✅ Try assigning a number to a var that was inferred as a String — Dart will stop you.

- ✅ Try calling .toUpperCase() on an Object — Dart will stop you unless you cast.

- ✅ Try calling .toUpperCase() on a dynamic that holds a number — Dart will crash at runtime. 

---
## 5️⃣ Day 6 Challenge
### **Create a Dart file that:**

1. Declares three variables: one with var, one with Object, one with dynamic.

2. Assigns different types to Object and dynamic.

3. Tries to use a method like .toUpperCase() on each — and handles errors or casts properly.

4. Prints the results clearly.

---
# 💡 Pro Tip: Use `var` for safety, `Object` for flexibility with caution, and `dynamic` **only** when you’re dealing with truly unknown types (like JSON or user input).

# *🎯 Day 5 — Dart Keywords*
## *1️⃣ Why Keywords Exist*
---
Imagine you’re in a workshop with a set of special tools. Some tools are reserved for the workshop’s master — you can use them, but you can’t rename them or repurpose them for something else. In Dart, keywords are those reserved words — they have a special meaning to the Dart compiler, and you can’t use them as variable names, function names, or identifiers.
---
## *2️⃣ The Why*
---
-Keywords prevent confusion between your code and Dart’s built‑in commands.
-They make the language predictable — if will always mean a conditional, not a variable name.
---
---
## *3️⃣ Dart Keywords List*
Dart has reserved words that are split into two categories:
##A. Reserved Words (can’t be used at all)
``` Keywords 
abstract, else, import, super, as, enum, in, switch,
assert, export, interface, sync, async, extends, is, this,
await, extension, late, throw, break, external, library, true,
case, factory, mixin, try, catch, false, new, typedef,
class, final, null, var, const, finally, on, void,
continue, for, operator, while, covariant, Function, part, with,
default, get, required, yield, deferred, hide, rethrow, do,
if, return, dynamic, implements, set ```
##B. Contextual Keywords
These are only reserved in certain contexts (you can use them as identifiers elsewhere, but it’s not recommended):
``` Keywords
show, hide, sync, async, on, required
```
---
---
## *4️⃣ Step‑by‑Step Understanding*
``` Dart 
void main() {
  // ❌ Invalid: using a keyword as a variable name
  // int class = 5; // ERROR: 'class' is a reserved word

  // ✅ Valid: use a normal name
  int studentClass = 5;
  print(studentClass);

  // ❌ Invalid: using 'if' as a function name
  // void if() {} // ERROR

  // ✅ Valid: use descriptive names
  void checkCondition() {}
}
```
---
---
 ## *5️⃣ Checkpoints*
 *Checkpoint 1*: Try naming a variable var — Dart will reject it.

*Checkpoint 2*: Try using async as a variable name — it might work outside async code, but it’s bad practice.

*Checkpoint 3*: Notice that keywords are case‑sensitive — `Class` is not the same as `class`, but using it is still confusing.
---
---
##Day 5 Challenge
1. Create a Dart file that:

-Declares variables with valid names.

-Shows at least two invalid keyword usages (commented out so the code runs).

-Prints the valid variables.

2. Add a comment block listing at least 10 Dart keywords you’ve learned.
---
# *💡 Pro Tip: Even if Dart allows a contextual keyword as a variable name, don’t do it — future Dart versions might make it fully reserved, breaking your code.*
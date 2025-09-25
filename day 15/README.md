# 🎯 Day 15 — Control Flow in Dart 
## 1️⃣ Story — The Kingdom’s Council of Decisions
>Imagine your Dart kingdom again:

- Citizens (variables) live their lives.

- Professions (data types) define what they can do.

- Laws (operators) govern interactions.

>But a kingdom without __decisions__ would be chaos. Who decides if the gates open? Who decides if the army marches? Who decides if the baker keeps baking bread until the flour runs out?

That’s where **Control Flow** comes in. It’s the __council of decisions__ — the system that says:

- “If this happens, do that.”

- “Repeat this until the condition changes.”

- “Choose one path out of many.”

Without control flow, your program would just run line by line like a robot with no choices. With it, your program becomes intelligent and reactive.

## 2️⃣ Conditional Statements
### If / Else — The Crossroad
Think of a traveler at a fork in the road.

- If the left path is safe, go left.

- Else, if the right path is open, go right.

- Else, stay put.
```dart 
int score = 85;

if (score >= 90) {
  print('Excellent'); // runs if condition is true
} else if (score >= 60) {
  print('Good'); // runs if first condition is false but this is true
} else {
  print('Try again'); // runs if all above are false
}
```
 Explanation:

- Dart checks conditions __top to bottom__.

- The first `true` branch it finds is executed, and the rest are skipped.

- If none are true, the `else` block is the fallback.
--- 
### Switch — The Gatekeeper with Multiple Keys
Imagine a guard at a castle gate. The guard checks your **badge** (the value of a variable). Depending on the badge, you’re sent to a specific hall.
```dart 
var grade = 'B';

switch (grade) {
  case 'A':
    print('Outstanding');
    break; // stops execution here
  case 'B':
    print('Great');
    break;
  case 'C':
    print('Average');
    break;
  default:
    print('Needs improvement');
}
```
Explanation:

- `switch` is cleaner than writing many `if/else` statements.

- Each `case` must end with `break` (or `return`) to stop falling through.

- `default` is the fallback if no case matches.

## 3️⃣ Loops — Repetition Machines
### For Loop — The Staircase
If you know exactly how many steps you need to climb, a ``for loop`` is perfect.
```dart 
for (int i = 1; i <= 5; i++) {
  print('Step $i');
}
```
Explanation:

- int i = 1 → start at step 1.

- i <= 5 → keep going until step 5.

- i++ → move one step at a time.
---
### While Loop — The Endless Walk
If you don’t know how long the journey will last, but you know the condition to keep walking, use `while`.
```dart 
int count = 0;
while (count < 3) {
  print('Walking... $count');
  count++;
}
```
Explanation:

- Checks the condition **before** each loop.

- If false at the start, it may never run.
---
### Do‑While Loop — The Tavern Rule
Imagine a tavern where you must drink **at least one cup** before deciding if you want more.
```dart 
int x = 0;
do {
  print('Cup $x');
  x++;
} while (x < 1);
```
Explanation:

- Runs at least once, even if the condition is false.

- Useful when you always want one guaranteed execution.

## 4️⃣ Loop Control — Skipping & Breaking
``` dart 
for (int i = 1; i <= 5; i++) {
  if (i == 3) continue; // skip 3, go to next iteration
  if (i == 5) break;    // stop loop completely
  print(i);
}
```
Explanation:

- continue = skip this turn, but keep looping.

- break = stop the loop entirely.

## 5️⃣ Checkpoints
- ✅ Write an if that checks if a number is even or odd.

- ✅ Use a switch to print the day of the week.

- ✅ Write a for loop that counts down from 5 to 1.

- ✅ Write a while loop that runs until a counter reaches 10.

## Day 15 Challenge
Write a Dart program that:

1. Uses an `if/else` to check if a number is positive, negative, or zero.

2. Uses a `switch` to print a message for different traffic light colors (red, yellow, green).

3. Uses a `for` loop to print the first 10 multiples of 3.

4. Uses a `while` loop to count down from 5 to 1.
--- 
### Control flow is like the government of your kingdom:

- If/Else = judges making case‑by‑case decisions.

- Switch = a clerk checking IDs and routing people.

- For loops = soldiers marching in formation (fixed steps).

- While loops = guards patrolling until danger is gone.

 - Do‑while = tavern keepers who always serve at least one drink.

It’s the system that turns your kingdom from static to dynamic and alive.


## 💡 Pro Tip:

- Use **for** when you know the exact number of repetitions.

- Use **while** when the number of repetitions depends on a condition.

- Use **do‑while** when you need at least one guaranteed execution.

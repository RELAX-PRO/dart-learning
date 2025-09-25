// Day 15 Challenge — Control Flow examples with explanations

void main() {
  print('--- 1) If / Else: Check positive, negative, or zero ---');
  int number = -5;
  if (number > 0) {
    print('$number is positive');
  } else if (number < 0) {
    print('$number is negative');
  } else {
    print('$number is zero');
  }

  print('\nExplanation: The code checks conditions top-to-bottom. The first true branch runs.');

  print('\n--- 2) Switch: Traffic light messages ---');
  var light = 'yellow';
  switch (light) {
    case 'red':
      print('Stop: Red light');
      break;
    case 'yellow':
      print('Caution: Yellow light');
      break;
    case 'green':
      print('Go: Green light');
      break;
    default:
      print('Unknown light color');
  }

  print('\nExplanation: switch chooses one case to run based on the value. Use break to stop fall-through.');

  print('\n--- 3) For loop: First 10 multiples of 3 ---');
  for (int i = 1; i <= 10; i++) {
    print('$i × 3 = ${i * 3}');
  }

  print('\nExplanation: for(initial; condition; step) runs until the condition is false.');

  print('\n--- 4) While loop: Countdown from 5 to 1 ---');
  int counter = 5;
  while (counter > 0) {
    print('Countdown: $counter');
    counter--; // decrease by 1 each time
  }
  print('Lift off!');

  print('\nExplanation: while checks the condition before each iteration; it may not run at all if false initially.');

  // Extra: do-while example to show guaranteed execution
  print('\n--- Extra: do-while (runs at least once) ---');
  int x = 0;
  do {
    print('Do-while run: $x');
    x++;
  } while (x < 1);

  print('\nChallenge complete. Try changing the values (number, light, loop ranges) to see how control flow changes behavior.');
}

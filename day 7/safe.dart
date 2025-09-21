void main()
{
  var livetime = DateTime.now();
  print('You are alive since: $livetime');
  const pi = 3.14159;
  print('Value of pi: $pi');
  // pi = 3.14; // This line would cause an error because 'pi' is const
  // livetime = DateTime.now(); // This line would cause an error because 'livetime' is final
  livetime.add(Duration(days: 1)); // This is allowed, modifying the object, not the reference
  print('Tomorrow will be: $livetime'); // Note that the date will be the same as 'livetime' because DateTime is immutable
  //livetime = DateTime.now(); // This line would cause an error because 'livetime' is final

}
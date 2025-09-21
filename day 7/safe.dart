void main()
{
  final livetime = DateTime.now();
  print('You are alive since: $livetime');
  const pi = 3.14159;
  print('Value of pi: $pi');
  // pi = 3.14; // This line would cause an error because 'pi' is const
  // livetime = DateTime.now(); // This line would cause an error because 'livetime' is final
}
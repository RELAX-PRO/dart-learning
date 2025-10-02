int multiply (int a, int b) => a * b;
void welcome ([String name = 'Guest']) 
{
  print("Welcome, $name!");
}
int calculate (int x, int y, String func)
{
  switch (func)
  {
    case '+':
      return x + y;
    case '-':
      return x - y;
    case '*':
      return x * y;
    case '/':
      return x ~/ y;
    default:
      return 0;
  }
}
void main ()
{
  print(multiply(3, 4));
  welcome();
  welcome("IQ");
  print(calculate(10, 5, '+'));
  print(calculate(10, 5, '-'));
  print(calculate(10, 5, '*'));
  print(calculate(10, 5, '/'));
}
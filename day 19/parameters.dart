// Function with positional parameters
void greet(String name) 
{
  print('Hello, $name!');
}

// Function with optional positional parameters
void Welcome([String name = 'Guest'])
{
  print('Welcome, $name!');
}

void main()
{
  // Positional parameters
  greet('Alice');
  greet('Bob');
  
  // Optional positional parameters
  Welcome('IQ');
}

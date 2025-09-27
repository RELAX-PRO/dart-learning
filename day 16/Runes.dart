void main ()
{
  String name = "Mustafa";
  for (var char in name.runes)
  {
    print("Character: ${String.fromCharCode(char)} code point: $char");
  }
  
}
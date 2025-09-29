void main ()
{
  String name = "Mustafa";
  for (var char in name.runes)
  {
    print("Character: ${String.fromCharCode(char)} code point: $char");
  }
  name = "🚀😀🔥";
  for (var char in name.runes)
  {
    print("Character: ${String.fromCharCode(char)} code point: $char");
  }
  var roketCode = Runes('\u{1F680}');
  var roket = (String.fromCharCode(roketCode.first));
  var smile = Runes('\u{1F600}');
  String smileEmoji = (String.fromCharCode(smile.first));
  var fire = Runes('\u{1F525}');
  String fireEmoji = (String.fromCharCode(fire.first));
  print("\"Learning Dart is fun $roket $smileEmoji $fireEmoji\"");
  List <String> iq = ["I", "Q"];
  for (var char in iq)
  {
    print("Character: $char code point: ${char.runes.first}");
  }
  List <String> runes_List = ["\u{49}", "\u{51}"];
  for (var char in runes_List)
  {
    print("Character: $char code point: ${char.runes.first} ");
  }  
}
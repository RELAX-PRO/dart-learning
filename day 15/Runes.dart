void main()
{

  // characters and their Unicode code points
  String name = 'Mustafa';

  for (var r in name.runes) {
    print('Character: ${String.fromCharCode(r)} → Code point: $r');
  }

  String rocket = '🚀'; // Unicode for rocket emoji
  for (var r in rocket.runes) {
    print('Character: ${String.fromCharCode(r)} → Code point: $r');
  }
  Runes r1 = Runes('\u{1f600}'); // Unicode for 😀
  print(String.fromCharCode(r1.first));

  var dart = "Dart ❤"; 
  for (var codePoint in dart.runes)
  {
    print("Character: "+String.fromCharCode(codePoint)+" Code Point: "+codePoint.toString());
  }
  
}
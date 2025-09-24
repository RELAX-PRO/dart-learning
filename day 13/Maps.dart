void main()
{
  Map<String, String> countrys = {
    'IQ': 'Iraq',
    'EG': 'Egypt',
    'SY': 'Syria',
    'TR': 'Turkey',
    'IR': 'Iran'
  };
  print(countrys);
  countrys['JP'] = 'Japan'; // Adding a new key-value pair
  countrys['SA'] = 'Saudi Arabia'; // Adding another key-value pair
  countrys['IQ'] = 'Republic of Iraq'; // Updating an existing value
  countrys.remove('SY'); // Removing a key-value pair
  print(countrys);
  for (var code in countrys.keys) {
    print('Country code: $code, Country name: ${countrys[code]}');
  }
}
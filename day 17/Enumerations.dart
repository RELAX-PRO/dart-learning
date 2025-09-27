enum Weather { sunny, cloudy, rainy, snowy }
void main () 
{
  // uncomment line 6 to see the output
  Weather? today; // nullable Weather variable
  // today = Weather.sunny; // assign a value to it
  print('Today\'s weather: $today');
  print(Weather.sunny.name); 
  print(Weather.cloudy.name);
  print(Weather.rainy.name);
  print(Weather.snowy.name);
  print(Weather.values); // list of all enum values
  switch (today) 
  {
    case Weather.sunny:
      print('It\'s a bright and sunny day!');
      break;
    case Weather.cloudy:
      print('The sky is overcast with clouds.');
      break;
    case Weather.rainy:
      print('Don\'t forget your umbrella, it\'s raining!');
      break;
    case Weather.snowy:
      print('It\'s snowing outside, stay warm!');
      break;
      default:
      print('Unknown weather condition.');
  }
}
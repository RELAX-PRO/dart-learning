void main() 
{
  bool isTrue = true;
  bool isFalse = false;
  print('isTrue: $isTrue, isFalse: $isFalse');
  
  bool studying = false;
  bool video_watched = false;
  if (video_watched && studying)
  {
    print("Well done!");
  }
  else if (video_watched || studying)
  {
    print('Keep going!');
  }
  else
  {
    print('Start now!');
  }
}
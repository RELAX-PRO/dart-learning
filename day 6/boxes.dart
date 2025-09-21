void main()
{
  var box_1 = 'Box 1';
  Object box_2 = 'Box 2';
  dynamic box_3 = 'Box 3';
  
  box_1 = "hello variable box 1";
  box_2 = "hello Object box 2";
  box_3 = "hello dynamic box 3";

  print(box_1.toUpperCase());
  //print(box_2.toUpperCase()); // Error: The method 'toUpperCase' isn't defined for the type 'Object'.
  print(box_2);
  print(box_3.toUpperCase());

}
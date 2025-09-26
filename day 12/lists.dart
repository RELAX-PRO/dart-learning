void main()
{
  var fav_fruits = ['Mango', 'Banana', 'Apple', 'Grapes'];
  // other way to define a list : List<String> = ['fruit']
  fav_fruits.add('Orange');
  fav_fruits.insert(0, 'Pineapple');
  fav_fruits.remove(fav_fruits[1]);
  print(fav_fruits);
}

void main()
{
  Set<String> guests = {
    'Ali',
    'Sara',
    'IQ'
  };
  print(guests);
  var integers = {1, 2, 3, 4, 5};
  print(integers);

  var test1 = {1, 2, 3, 4, 5};
  print(test1); // Duplicates will be removed
  List<int> test2 = [6,5,4,4,4,3,2,2,1,0,0];
  print(test1.union(test2.toSet()));
  var test3 = <int>{};
  print(test3);
  Set<int>? test4 = {};
  print(test4);
  test3 = {0, 1, 2, 3};
  print(test3.intersection(test1));
  print(test3.difference(test1));

  // the day challenge
  var favFruits = {'mango', 'watermelon', 'orange' , 'grapefruit'};
  print(favFruits);
  favFruits.add('orange');
  print(favFruits);
  var moreFruits = {'banana', 'kiwi', 'apple', 'mango'};
  print(favFruits.intersection(moreFruits));
  Set<String> allFruits = favFruits.union(moreFruits);
  print(allFruits);
  print(favFruits.difference(moreFruits));

}
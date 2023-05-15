void main() {
  /*
  * As the language tour shows, you can use literals to create and initialize lists.
  * Alternatively, use one of the List constructors. The List class also defines
  * several methods for adding items to and removing items from lists.
  */

  // Create an empty list of strings.
  var grains = <String>[];
  assert(grains.isEmpty);

  // Create a list using a list literal.
  var fruits = ['apples', 'oranges'];

  // Add to a list.
  fruits.add('kiwis');

  // Add multiple items to a list.
  fruits.addAll(['grapes', 'bananas']);

  // Get the list length.
  assert(fruits.length == 5);

  // Remove a single item.
  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex); //使用removeAt时被移除的数组不能是固定长度的数组
  assert(fruits.length == 4);

  // Remove all elements from a list.
  fruits.clear();
  assert(fruits.isEmpty);

  // You can also create a List using one of the constructor.
  var vegetables = List.filled(99, 'broccoli');
  assert(vegetables.every((v) => v == 'broccoli'));



  // Use indexOf() to find the index of an object in a list:

  var fruits1 = ['apples', 'oranges'];

  // Access a list by index.
  assert(fruits1[0] == 'apples');

  // Find an item in a list.
  assert(fruits1.indexOf('apples') == 0);


  /*
  * Sort a list using the sort() method. You can provide a sorting function that
  * compares two objects. This sorting function must return < 0 for smaller, 0
  * for the same, and > 0 for bigger. The following example uses compareTo(),
  * which is defined by Comparable and implemented by String.
  */

  



  print('OK.');
}

void main() {
  /*
  * A set in Dart is an unordered collection of unique items. Because a set is
  * unordered, you can’t get a set’s items by index (position).
  */

  // Create an empty set of strings.
  var ingredients = <String>{};

  // Add new items to it.
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  assert(ingredients.length == 3);

  //Adding a duplicate item has no effect.
  ingredients.add('gold');
  assert(ingredients.length == 3);

  // Remove an item from a set.
  ingredients.remove('gold');
  assert(ingredients.length == 2);

  // You can also create sets using one of the constructors.
  var atomicNumbers = Set.from([79, 22, 54]);

  /*
  * Use and to check whether one or more objects are in a set:contains()containsAll()
  */

  var ingredients1 = Set<String>();
  ingredients1.addAll(['gold', 'titanium', 'xenon']);

  // Check whether a item is in the set.
  assert(ingredients1.contains('titanium'));

  // Check whether all the items are in the set.
  assert(ingredients1.containsAll(['titanium', 'xenon']));

  /*
  * An intersection is a set whose items are in two other sets.
  */

  // Create the intersection of two sets.
  var nobleGases = Set.from(['xenon', 'argon']);
  var intersection = ingredients1.intersection(nobleGases);
  assert(intersection.length == 1);
  assert(intersection.contains('xenon'));

  print('OK.');
}

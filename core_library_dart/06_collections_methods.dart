void main() {
  /*
  * Use or to check whether a list, set, or map has items:isEmptyisNotEmpty
  */

  var coffees = <String>[];
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  assert(coffees.isEmpty);
  assert(teas.isNotEmpty);

  /*
  * To apply a function to each item in a list, set, or map, you can use :forEach()
  */

  var teas1 = ['green', 'black', 'chamomile', 'earl grey'];

  teas1.forEach((tea) => print('I drink $tea'));

  /*
  * When you invoke on a map, your function must take two arguments (the key and 
  * value):forEach()
  */

  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

  hawaiianBeaches.forEach((k, v) {
    print('I want to visit $k and swim at $v');
    // I want to visit Oahu and swim at
    // [Waikiki, Kailua, Waimanalo], etc.
  });

  /*
  * Iterables provide the method, which gives you all the results in a single object:map()
  */

  var teas2 = ['green', 'black', 'chamomile', 'earl grey'];

  var loudTeas = teas2.map((tea) => tea.toUpperCase());
  loudTeas.forEach(print);

  /*
  * To force your function to be called immediately on each item, use 
  * or :map().toList()map().toSet()
  */

  var loudTeas1 = teas.map((tea) => tea.toUpperCase()).toList();

  /*
  * Use Iterable’s method to get all the items that match a condition. Use 
  * Iterable’s and methods to check whether some or all items match a 
  * condition.where()any()every()
  */

  // Chamomile is not caffeinated.
  bool isDecaffeinated(String teaName) => teaName == 'chamomile';

  // Use where() to find only the items that return true
  // from the provided function.
  var decaffeinatedTeas = teas.where((tea) => isDecaffeinated(tea));
  // or teas.where(isDecaffeinated)

  // Use any() to check whether at least one item in the
  // collection satisfies a condition.
  assert(teas.any(isDecaffeinated));

  // Use every() to check whether all the items in a
  // collection satisfy a condition.
  assert(!teas.every(isDecaffeinated));



  print('OK.');
}

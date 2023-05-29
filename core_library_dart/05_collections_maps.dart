void main() {
  /*
  * A map, commonly known as a dictionary or hash, is an unordered collection of
  * key-value pairs. Maps associate a key to some value for easy retrieval.
  * Unlike in JavaScript, Dart objects are not maps.
  */

  /* 
  * You can declare a map using a terse literal syntax, or you can use a
  * traditional constructor:
  */

  // Maps often use strings as keys.
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

  // Maps can be built from a constructor.
  var searchTerms = Map();

  // Maps are parameterized types; you can specify what types the key and value 
  // should be.
  var nobleGases = Map<int, String>();

  /*
  * You add, get, and set map items using the bracket syntax. Use to remove a 
  * key and its value from a map.remove()
  */

  var nobleGases1 = {54: 'xenon'};

  // Retrieve a value with a key.
  assert(nobleGases1[54] == 'xenon');

  // Check whether a map contains a key.
  assert(nobleGases1.containsKey(54));

  // Remove a key and its value.
  nobleGases1.remove(54);
  assert(!nobleGases1.containsKey(54));

  /*
  * You can retrieve all the values or all the keys from a map:
  */

  // Get all the keys as an unordered collection(an Iterable).
  var keys = hawaiianBeaches.keys;

  assert(keys.length == 3);
  assert(Set.from(keys).contains('Oahu'));

  // Get all the values as an unordered collection(an Iterable of Lists).
  var values = hawaiianBeaches.values;
  assert(values.length == 3);
  assert(values.any((v) => v.contains('Waikiki')));

  /*
  * To check whether a map contains a key, use. Because map values can be null,
  * you cannot rely on simply getting the value for the key and checking for 
  * null to determine the existence of a key.containsKey()
  */ 

  assert(hawaiianBeaches.containsKey('Oahu'));
  assert(!hawaiianBeaches.containsKey('Florida'));



  print('OK.');
}

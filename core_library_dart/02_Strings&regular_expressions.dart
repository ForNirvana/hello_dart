void main() {
  // You can find particular locations within a string, as well as check whether
  // a string begins with or ends with a particular pattern. For example:

  // Check whether a string contains another string.
  assert('Never odd or even'.contains('odd'));

  // Dose a string start with another string?
  assert('Never odd or even'.startsWith('Never'));

  // Dose a string end with another string?
  assert('Never odd or even'.endsWith('even'));

  // Find the location of a string inside a string.
  assert('Never odd or even'.indexOf('odd') == 6);

  // You can also extract a substring or split a string into a list of substrings:

  // Grab a substring.
  assert('Never odd or even'.substring(6, 9) == 'odd');

  // Split a string using a string pattern.
  var parts = 'progressive web apps'.split(' ');
  assert(parts.length == 3);
  assert(parts[0] == 'progressive');

  // Get a UTF-16 code unit (as a string) by index.
  assert('Never odd or even'[0] == 'N');

  // Use split() with an empty string parameter to get a list of all characters
  // (as Strings); good for iterating.
  for (final char in 'hello'.split('')) {
    print(char);
  }

  // Get all the UTF-16 code units in the string.
  var codeUnitList = 'Never odd or even'.codeUnits.toList();
  assert(codeUnitList[0] == 78);

  // You can easily convert strings to their uppercase and lowercase variants:

  // Convert to uppercase.
  assert('web apps'.toUpperCase() == 'WEB APPS');

  // Convert to lowercase.
  assert('WEB APPS'.toLowerCase() == 'web apps');

  // Remove all leading and trailing white space with trim(). To check whether a
  // string is empty (length is zero), use isEmpty.

  // Trim a string.
  assert(' hello '.trim() == 'hello');

  // Check whether a string is empty.
  assert(''.isEmpty);

  // Strings with only white space are not empty.
  assert(' '.isNotEmpty);

  // Strings are immutable objects, which means you can create them but you can’t
  // change them. If you look closely at the String API reference, you’ll notice
  // that none of the methods actually changes the state of a String. For example,
  // the method replaceAll() returns a new String without changing the original String:
  var greetingTemplate = 'Hello, NAME!';
  var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');

  // greetingTemplate didn't change.
  assert(greeting != greetingTemplate);

  // To programmatically generate a string, you can use StringBuffer. A
  // StringBuffer doesn’t generate a new String object until toString() is called.
  // The writeAll() method has an optional second parameter that lets you specify
  // a separator—in this case, a space.
  var sb = StringBuffer();
  sb
    ..write('Use a StringBuffer for ')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..write('.');

  var fullString = sb.toString();

  assert(fullString == 'Use a StringBuffer for efficient string creation.');

  // The RegExp class provides the same capabilities as JavaScript regular expressions.
  // Use regular expressions for efficient searching and pattern matching of strings.

  // Here's a regular expression for one or more digits.
  var numbers = RegExp(r'\d+');

  var allCharacters = 'llamas live fifteen to twenty years';
  var someDigits = 'llamas live 15 to 20 years';

  // contains() can use a regular expression.
  assert(!allCharacters.contains(numbers));
  assert(someDigits.contains(numbers));

  //Replace every match with another string.
  var exedOut = someDigits.replaceAll(numbers, 'XX');
  assert(exedOut == 'llamas live XX to XX years');

  // You can work directly with the RegExp class, too. The Match class provides
  // access to a regular expression match.
  var numbers2 = RegExp(r'\d+');
  var someDigits2 = 'llamas live 15 to 20 years';

  // Check whether the reg exp has a match in a string.
  assert(numbers2.hasMatch(someDigits2));

  // Loop through all matches.
  for (final match in numbers2.allMatches(someDigits2)){
    print(match.group(0)); // 15, then 20 
  }

  print('OK.');
}

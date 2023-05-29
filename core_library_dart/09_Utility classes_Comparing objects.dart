/*
* The core library contains various utility classes, useful for sorting,
* mapping values, and iterating.
*/

/*
* Implement the Comparable interface to indicate that an object can be compared
* to another object, usually for sorting. The method returns < 0 for smaller,
*  0 for the same, and > 0 for bigger.compareTo()
*/

class Line implements Comparable<Line> {
  final int length;
  const Line(this.length);

  @override
  int compareTo(Line other) => length - other.length;
}

void main() {
  var short = const Line(1);
  var long = const Line(100);
  assert(short.compareTo(long) < 0);

  print("OK.");
}

/*
* The Iterable and Iterator classes support sequential access to a collection
* of values. To practice using these collections, follow the Iterable collections codelab.
*/

/*
* If you create a class that can provide Iterators for use in for-in loops,
* extend (if possible) or implement Iterable. Implement Iterator to define
* the actual iteration ability.
*/

class Process {
  // Represents a process...
}

class ProcessIterator implements Iterator<Process> {
  @override
  Process get current => ...
  @override
  bool moveNext() => ...
}

// A mythical class that lets you iterate through all
// processes. Extends a subclass of [Iterable].
class Processes extends IterableBase<Process> {
  @override
  final Iterator<Process> iterator = ProcessIterator();
}

void main() {
  // Iterable objects can be used with for-in.
  for (final process in Processes()) {
    // Do something with the process.
  }

  print("OK.");
}
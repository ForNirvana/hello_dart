int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  var result = fibonacci(20);
  print(result);

  var name = 'Voyager I';
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  flybyObjects.where((name) => name.contains('turn')).forEach(print);
  assert(name == 'Voyager I');
}

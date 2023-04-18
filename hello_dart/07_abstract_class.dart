abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('================================');
    describe();
    print('================================');
  }
}

class Describe extends Describable {
  int number;
  String name;

  Describe(int this.number, String this.name);

  void describe() {
    print('There are $number people in $name.');
  }
}

void main() {
  var something = Describe(50000, 'YNU');
  something.describeWithEmphasis();
}

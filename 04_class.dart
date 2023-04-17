class Spacecraft {
  var name;
  DateTime? launchDate;

  //Read-only non-final property
  int? get launchYear => launchDate?.year;

  //Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    //Initailization code gose here.
  }

  //Named constructor that forward to the default one.
  Spacecraft.unlaunched(var name) : this(name, null);

  //Method.
  void describe() {
    print('Spacecraft: $name');
    //Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      var years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('unlaunched');
    }
  }
}

class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(super.name, DateTime super.launchDate);
}

void main() {
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();

  var voyager6 = Orbiter('Voyager VI', DateTime(1978, 9, 5), 10.58);
  voyager6.describe();

  var voyager9 = PilotedCraft('Voyager IX', DateTime(1976, 9, 5));
  voyager9.describe();
  voyager9.describeCrew();
}

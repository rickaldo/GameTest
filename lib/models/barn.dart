class Barn {
  int _wheat = 0;
  double _capacity = 100;
  double _upgradeCost = 50;

  Barn({int wheat, int capacity, int upgradeCost});

  int get wheat => _wheat;

  set wheat(int value) => _wheat = value;

  double get capacity => _capacity;

  set capacity(double value) => _capacity = value;

  double get upgradeCost => _upgradeCost;

  set upgradeCost(double value) => _upgradeCost = value;

  void addWheat(int earning) {
    _wheat += earning;
  }

  void upgradeCapacity() {
    _capacity *= 3.1415;
    _upgradeCost *= 3.14159;
  }
}

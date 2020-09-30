class Barn {
  int _wheat;
  double _capacity;
  double _upgradeCost;
  bool _isfull;

  Barn({int wheat, int capacity, int upgradeCost});

  int get wheat => _wheat;

  set wheat(int value) => _wheat = value;

  double get capacity => _capacity;

  set capacity(double value) => _capacity = value;

  double get upgradeCost => _upgradeCost;

  set upgradeCost(double value) => _upgradeCost = value;

  bool get isfull => _isfull;

  set isfull(bool value) => _isfull = value;

  void addWheat(int earning) {
    _wheat += earning;
  }

  void upgradeCapacity() {
    _capacity *= 3.1415;
    _upgradeCost *= 3.14159;
  }
}

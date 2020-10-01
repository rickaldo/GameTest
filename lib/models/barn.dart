class Barn {
  int _wheat = 0;
  int _capacity = 100;
  int _upgradeCost = 50;

  Barn({int wheat, int capacity, int upgradeCost});

  int get wheat => _wheat;

  set wheat(int value) => _wheat = value;

  int get capacity => _capacity;

  set capacity(int value) => _capacity = value;

  int get upgradeCost => _upgradeCost;

  set upgradeCost(int value) => _upgradeCost = value;

  void addWheat(int earning) {
    _wheat += earning;
  }

  void upgradeCapacity() {
    _capacity *= 3;
    _upgradeCost *= 3;
  }
}

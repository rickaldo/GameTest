class Field {
  int earnings;
  int lvl = 1;
  int upgradeCost;

  Field({int earnings, int upgradeCost}) {
    this.earnings = earnings;
    this.upgradeCost = upgradeCost;
  }

  int get getEarnings => earnings;

  set setEarnings(int earnings) => this.earnings = earnings;

  int get getLvl => lvl;

  set setLvl(int lvl) => this.lvl = lvl;

  int get getUpgradeCost => upgradeCost;

  set setUpgradeCost(int upgradeCost) => this.upgradeCost = upgradeCost;

  void upgradeField() {
    lvl++;
    earnings *= 2;
    upgradeCost *= 3;
  }
}

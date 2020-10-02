class Field {
  int earnings;
  int lvl = 1;
  int upgradeCost;
  bool isUnlocked;

  Field({int earnings, int upgradeCost, bool isUnlocked}) {
    this.earnings = earnings;
    this.upgradeCost = upgradeCost;
    this.isUnlocked = isUnlocked;
  }

  bool get getIsUnlocked => isUnlocked;

  set setIsUnlocked(bool isUnlocked) => this.isUnlocked = isUnlocked;

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

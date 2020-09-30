class Field {
  int earnings = 2;
  int lvl = 1;
  int upgradeCost = 10;

  Field();

  int get getEarnings => earnings;

  set setEarnings(int earnings) => this.earnings = earnings;

  int get getLvl => lvl;

  set setLvl(int lvl) => this.lvl = lvl;

  int get getUpgradeCost => upgradeCost;

  set setUpgradeCost(int upgradeCost) => this.upgradeCost = upgradeCost;
}

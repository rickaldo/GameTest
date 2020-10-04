import 'package:flutter/material.dart';

class Field {
  int earnings;
  int lvl = 1;
  int upgradeCost;
  bool isUnlocked;

  Field(
      {@required this.earnings,
      @required this.upgradeCost,
      @required this.isUnlocked});

  bool get getIsUnlocked => isUnlocked;

  set setIsUnlocked(bool isUnlocked) => this.isUnlocked = isUnlocked;

  int get getEarnings => earnings;

  set setEarnings(int earnings) => this.earnings = earnings;

  int get getLvl => lvl;

  set setLvl(int lvl) => this.lvl = lvl;

  int get getUpgradeCost => upgradeCost;

  set setUpgradeCost(int upgradeCost) => this.upgradeCost = upgradeCost;
}

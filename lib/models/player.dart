import 'package:stacked/stacked.dart';

import 'barn.dart';
import 'market.dart';
import 'field.dart';

class Player {
  int money = 0;
  Barn barn = new Barn();

  var fields = new List();
  Market markt = new Market();

  Player() {
    if (fields.length == 0) {
      for (int i = 0; i < 12; i++) {
        if (i == 0) {
          fields.add(
            new Field(earnings: 1, upgradeCost: 10, isUnlocked: true),
          );
        } else
          fields.add(
            new Field(earnings: i * 10, upgradeCost: i * 12, isUnlocked: false),
          );
      }
    }
  }

  Field getField(int index) {
    return fields[index];
  }

  Barn getBarn() {
    return barn;
  }

  Market getMarket() {
    return markt;
  }

  void upgradeField(Field field) {
    if (!field.isUnlocked) {
      field.setIsUnlocked = true;
    }
    barn.wheat -= field.upgradeCost;
    field.upgradeField();
  }

  void upgradeBarn() {
    barn.wheat = barn.wheat - barn.upgradeCost;
    barn.upgradeCapacity();
  }

  Future harvestField(Field field) {
    return Future.delayed(Duration(seconds: 2), () {
      barn.addWheat(field.earnings);
    });
  }

  bool isBarnUpgradeble() {
    if (barn.wheat >= barn.upgradeCost) {
      return true;
    }
    return false;
  }

  bool isFieldUpgradeble(Field field) {
    if (barn.wheat >= field.upgradeCost) {
      return true;
    }
    return false;
  }

  bool unlockField(Field field) {
    if (barn.wheat >= field.upgradeCost) {
      field.isUnlocked = true;
      return true;
    } else if (field.isUnlocked = true) {
      return true;
    }
    return false;
  }
}

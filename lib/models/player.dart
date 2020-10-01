import 'package:stacked/stacked.dart';

import 'barn.dart';
import 'market.dart';
import 'field.dart';

class Player extends BaseViewModel {
  int money = 0;
  Barn barn = new Barn();

  Field field1 = new Field(earnings: 1, isUnlocked: true, upgradeCost: 10);
  Field field2 = new Field(earnings: 10, isUnlocked: false, upgradeCost: 100);

  Field getField(String name) {
    switch (name) {
      case "field1":
        return field1;
      case "field2":
        return field2;
    }
  }

  Barn getBarn() {
    return barn;
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

  Future test() async {}

  Future harvestField(Field field, String fieldname) async {
    await runBusyFuture(
        Future.delayed(Duration(seconds: 2), () {
          barn.addWheat(field.earnings);
        }),
        busyObject: fieldname);
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

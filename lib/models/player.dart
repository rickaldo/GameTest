import 'barn.dart';
import 'market.dart';
import 'field.dart';

class Player {
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

  Future harvestField(Field field, String fieldname) {
    return Future.delayed(Duration(seconds: 2), () {
      barn.addWheat(field.earnings);
    });
  }
}

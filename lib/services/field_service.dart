import '../models/field.dart';

class FieldService {
  Field field = new Field(earnings: 1, isUnlocked: true, upgradeCost: 10);
  Field field2 = new Field(earnings: 10, isUnlocked: true, upgradeCost: 100);

  Field get getField => this.field;
  Field get getField2 => this.field2;

  void upgradeField(Field field, int amount) {
    if (!field.isUnlocked) {
      field.setIsUnlocked = true;
    }
    field.lvl += amount;
    field.earnings *= (amount * 2);
    field.upgradeCost *= (amount * 3);
  }

  Future harvestField(Field field) {
    return Future.delayed(Duration(seconds: 2));
  }

  bool isFieldUpgradable(Field field, int money) {
    if (money > field.upgradeCost) {
      return true;
    }
    return false;
  }
}

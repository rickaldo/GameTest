import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../app/locator.dart';

import '../../../services/navigation_service.dart' as nav;
import '../../../app/constants.dart' as constant;
import '../../../models/field.dart';
import '../../../models/barn.dart';

class FieldViewModel extends BaseViewModel {
  static Field field1 = new Field(earnings: 1, upgradeCost: 10);
  static Field field2 = new Field(earnings: 10, upgradeCost: 200);
  static Barn barn1 = new Barn();

  Field field(String name) {
    switch (name) {
      case "field1":
        return field1;
      case "field2":
        return field2;
    }
  }

  Barn barn() {
    return barn1;
  }

  bool isBarnUpgradeble() {
    if (barn1.wheat >= barn1.upgradeCost) {
      return true;
    }
    return false;
  }

  bool isFieldUpgradeble(Field field) {
    if (barn1.wheat >= field.upgradeCost) {
      return true;
    }
    return false;
  }

  void upgradeField(Field field) {
    barn1.wheat -= field.upgradeCost;
    field.upgradeField();
    notifyListeners();
  }

  void upgradeBarn() {
    barn1.wheat = barn1.wheat - barn1.upgradeCost;
    barn1.upgradeCapacity();
    notifyListeners();
  }

  Future harvestField(Field field, String fieldname) async {
    await runBusyFuture(
      Future.delayed(Duration(seconds: 2), () {
        barn1.addWheat(field.earnings);
        notifyListeners();
      }),
      busyObject: fieldname,
    );
  }

  final nav.NavigationService _navigationService =
      locator<nav.NavigationService>();

  void navigateToStartMenu() {
    _navigationService.navigateToNamed(constant.startMenuScreen);
  }

  void navigateToMarket() {
    _navigationService.navigateToNamed(constant.marketView);
  }
}

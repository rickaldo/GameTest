import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../app/locator.dart';

import '../../../services/navigation_service.dart' as nav;
import '../../../app/constants.dart' as constant;
import '../../../models/field.dart';
import '../../../models/barn.dart';

class FieldViewModel extends BaseViewModel {
  // static Field field1 =
  //     new Field(earnings: 1, upgradeCost: 10, isUnlocked: true);
  // static Field field2 =
  //     new Field(earnings: 10, upgradeCost: 1, isUnlocked: false);
  // static Barn barn1 = new Barn();

  // Field field(String name) {
  //   switch (name) {
  //     case "field1":
  //       return field1;
  //     case "field2":
  //       return field2;
  //   }
  // }

  // Barn barn() {
  //   return barn1;
  // }

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

  bool unlockField(Field field) {
    if (barn1.wheat >= field.upgradeCost) {
      field.isUnlocked = true;
      return true;
    } else if (field.isUnlocked = true) {
      return true;
    }
    return false;
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

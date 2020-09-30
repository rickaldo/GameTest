import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/locator.dart';

import '../../../services/navigation_service.dart' as nav;
import '../../../app/constants.dart' as constant;
import '../../../models/field.dart';
import '../../../models/barn.dart';

class FieldViewModel extends BaseViewModel implements ChangeNotifier {
  static Field field1 = new Field();
  static Barn barn1 = new Barn();

  String debug() {
    print(field1.earnings);
    print(field1.lvl);
    print(field1.upgradeCost);
    return "Sucker";
  }

  Field field() {
    return field1;
  }

  Barn barn() {
    return barn1;
  }

  void upgradeField() {
    field1.setLvl = 10;
    field1.setEarnings = 45;
    field1.setUpgradeCost = 300;
  }

  void harvestField() async {
    await Future.delayed(Duration(seconds: 10), () {
      barn1.addWheat(field1.earnings);
      print(barn1.wheat);
      notifyListeners();
    });
  }

  final nav.NavigationService _navigationService =
      locator<nav.NavigationService>();

  void navigateToStartMenu() {
    _navigationService.navigateToNamed(constant.startMenuScreen);
  }

  // Future harvestField() async {
  //   await Future.delayed(seconds: timer).then((value) {});
  // }
}

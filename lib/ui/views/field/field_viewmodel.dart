import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/locator.dart';

import '../../../services/navigation_service.dart' as nav;
import '../../../app/constants.dart' as constant;
import '../../../models/field.dart';

class FieldViewModel extends BaseViewModel {
  static Field field1 = new Field();

  String debug() {
    print(field1.earnings);
    print(field1.lvl);
    print(field1.upgradeCost);
    return "Sucker";
  }

  void upgradeField(){

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

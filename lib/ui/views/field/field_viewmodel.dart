import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedDrunk/services/player_service.dart';
import '../../../app/locator.dart';

import '../../../models/player.dart';
import '../../../models/field.dart';
import '../../../services/navigation_service.dart' as nav;
import '../../../app/constants.dart' as constant;

class FieldViewModel extends BaseViewModel {
  final Player player = locator<PlayerService>().getPlayer();

  final nav.NavigationService _navigationService =
      locator<nav.NavigationService>();

  Player get getPlayer => this.player;

  Future harvestField(Field field, String fieldname) async {
    await runBusyFuture(player.harvestField(field, fieldname),
        busyObject: fieldname);
  }

  void upgradeField(Field field) {
    player.upgradeField(field);
    notifyListeners();
  }

  void navigateToStartMenu() {
    _navigationService.navigateToNamed(constant.startMenuScreen);
  }

  void navigateToMarket() {
    _navigationService.navigateToNamed(constant.marketView);
  }
}

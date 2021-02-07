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
  List<bool> _selected = [true, false, false];

  final nav.NavigationService _navigationService =
      locator<nav.NavigationService>();

  Player getPlayer() {
    return player;
  }

  Future harvestField(int index) async {
    await runBusyFuture(
      player.harvestField(player.getField(index)),
      busyObject: index,
    );
  }

  List<bool> upgradeSteps(int index) {
    _selected[index] = !_selected[index];
    notifyListeners();
  }

  List<bool> getSelected() {
    return _selected;
  }

  void upgradeField(Field field) {
    player.upgradeField(field);
    notifyListeners();
  }

  void navigateToStartMenu() {
    _navigationService.navigateToNamed(constant.startMenuScreen);
  }

  void popBack() {
    _navigationService.popBack();
  }

  void navigateToMarket() {
    _navigationService.navigateToNamed(constant.marketView);
  }
}

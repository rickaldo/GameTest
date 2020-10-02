import 'package:stacked/stacked.dart';

import 'package:stackedDrunk/services/player_service.dart';
import '../../../models/player.dart';
import '../../../services/navigation_service.dart' as nav;
import '../../../app/constants.dart' as constant;
import '../../../app/locator.dart';

class MarketViewModel extends BaseViewModel {
  final nav.NavigationService _navigationService =
      locator<nav.NavigationService>();

  final Player player = locator<PlayerService>().getPlayer();

  String showWheatPrice() {
    return player.getMarket().calculateWheatPrice().toString();
  }

  Player getPlayer() {
    return player;
  }

  void sellWheat() {}

  void navigateToStartMenu() {
    _navigationService.navigateToNamed(constant.startMenuScreen);
  }

  void navigateToField() {
    _navigationService.navigateToNamed(constant.fieldView);
  }
}

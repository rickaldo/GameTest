import 'package:stacked/stacked.dart';
import 'package:stackedDrunk/app/locator.dart';
import 'package:stackedDrunk/models/player.dart';
import 'package:stackedDrunk/services/navigation_service.dart';
import 'package:stackedDrunk/services/player_service.dart';

import '../../../app/constants.dart' as constant;

class MainViewModel extends IndexTrackingViewModel {
  NavigationService nav = locator<NavigationService>();
  final Player player = locator<PlayerService>().getPlayer();

  Player getPlayer() {
    return player;
  }

  void navigateToMarket() {
    nav.navigateToReplaceNamed(constant.marketView);
  }
}

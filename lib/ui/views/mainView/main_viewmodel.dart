import 'package:stacked/stacked.dart';
import 'package:stackedDrunk/app/locator.dart';
import 'package:stackedDrunk/services/navigation_service.dart';
import '../../../app/constants.dart' as constant;

class MainViewModel extends IndexTrackingViewModel {
  NavigationService nav = locator<NavigationService>();

  void navigateToMarket() {
    nav.navigateToReplaceNamed(constant.marketView);
  }
}

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../services/navigation_service.dart' as nav;
import '../../../app/constants.dart' as constant;
import '../../../app/locator.dart';

class MarketViewModel extends BaseViewModel {
  final nav.NavigationService _navigationService =
      locator<nav.NavigationService>();

  void navigateToStartMenu() {
    _navigationService.navigateToNamed(constant.startMenuScreen);
  }
}

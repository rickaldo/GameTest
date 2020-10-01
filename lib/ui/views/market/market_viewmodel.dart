import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../services/navigation_service.dart' as nav;
import '../../../app/constants.dart' as constant;
import '../../../app/locator.dart';
import '../../../models/market.dart';

class MarketViewModel extends BaseViewModel {
  final nav.NavigationService _navigationService =
      locator<nav.NavigationService>();

  Market market = new Market();

  String showWheatPrice() {
    return market.calculateWheatPrice().toString();
  }

  void sellWheat(){
    
  }

  void navigateToStartMenu() {
    _navigationService.navigateToNamed(constant.startMenuScreen);
  }

  void navigateToField() {
    _navigationService.navigateToNamed(constant.fieldView);
  }
}

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/locator.dart';
import '../../../services/navigation_service.dart' as nav;
import '../../../app/constants.dart' as constant;

class StartMenuViewModel extends BaseViewModel {
  final nav.NavigationService _navigationService =
      locator<nav.NavigationService>();

  void navigateToField() {
    _navigationService.navigateToNamed(constant.fieldView);
  }
}

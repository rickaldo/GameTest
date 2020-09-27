import 'package:injectable/injectable.dart';
import 'package:stackedDrunk/app/locator.dart';
import 'package:stacked_services/stacked_services.dart';
import '../app/locator.dart';

@module
abstract class ThirdPartyServicesModule {
  @lazySingleton
  NavigationService get navigationService;
}

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}

import 'package:stackedDrunk/app/locator.dart';
import 'package:stackedDrunk/services/player_service.dart';
import 'package:stacked_services/stacked_services.dart';
import '../app/locator.dart';

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => PlayerService());
}

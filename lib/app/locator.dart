import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/navigation_service.dart' as nav;
import '../services/player_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => nav.NavigationService());
  locator.registerLazySingleton(() => PlayerService());
}

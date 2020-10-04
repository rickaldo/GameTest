import 'package:get_it/get_it.dart';
import 'package:stackedDrunk/services/barn_services.dart';
import 'package:stackedDrunk/services/field_service.dart';
import 'package:stackedDrunk/services/game_service.dart';
import 'package:stackedDrunk/services/market_service.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/navigation_service.dart' as nav;
import '../services/player_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => nav.NavigationService());
  locator.registerLazySingleton(() => PlayerService());
  locator.registerLazySingleton(() => FieldService());
  locator.registerLazySingleton(() => BarnService());
  locator.registerLazySingleton(() => MarketService());
  locator.registerLazySingleton(() => GameService());
}

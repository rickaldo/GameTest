import 'package:stackedDrunk/app/locator.dart';
import 'package:stackedDrunk/models/player.dart';
import 'package:stackedDrunk/services/player_service.dart';

class GameService {
  final Player player = locator<PlayerService>().getPlayer;
  
}

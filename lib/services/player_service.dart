import '../models/player.dart';

class PlayerService {
  final Player player = new Player();

  Player get getPlayer => this.player;

  void wheatSold(int amount, int price) {
    player.money += (price * amount);
  }
}

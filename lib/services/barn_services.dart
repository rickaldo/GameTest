import '../models/barn.dart';

class BarnService {
  Barn barn = new Barn();

  Barn get getBarn => this.barn;

  void upgradeBarn(int amount) {
    barn.capacity *= (amount * 3);
    barn.upgradeCost = (amount * 3);
  }

  bool isBarnUpgradable(int money) {
    if (money > barn.upgradeCost) {
      return true;
    }
    return false;
  }

  void wheatSold(int amount) {
    barn.wheat -= amount;
  }

  void addWheat(int amount) {
    barn.wheat += amount;
  }
}

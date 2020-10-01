import 'dart:math';

class Market {
  int wheatPrice;
  int wheatBought = 0;
  Random random = new Random();

  int calculateWheatPrice() {
    if (wheatBought > 100) {
      wheatPrice = 1;

      return wheatPrice;
    } else if (wheatBought < 50) {
      wheatPrice = random.nextInt(10);
      while (wheatPrice == 0) {
        wheatPrice = random.nextInt(10);
      }

      return wheatPrice;
    } else if (wheatBought > 50 && wheatBought < 100) {
      wheatPrice = random.nextInt(5);
      while (wheatPrice == 0) {
        wheatPrice = random.nextInt(5);
      }
      return wheatPrice;
    }
  }

  void wheatSold(int quantity) {
    wheatBought += quantity;
  }
}

import 'dart:math';

class Market {
  int _wheatPrice;
  int _wheatBought;
  Random random = new Random();

  int calculateWheatPrice() {
    if (_wheatBought > 100) {
      _wheatPrice = 1;

      return _wheatPrice;
    } else if (_wheatBought < 50) {
      _wheatPrice = random.nextInt(10);
      while (_wheatPrice == 0) {
        _wheatPrice = random.nextInt(10);
      }

      return _wheatPrice;
    } else if (_wheatBought > 50 && _wheatBought < 100) {
      _wheatPrice = random.nextInt(5);
      while (_wheatPrice == 0) {
        _wheatPrice = random.nextInt(5);
      }
      return _wheatPrice;
    }
  }

  void wheatSold(int quantity) {
    _wheatBought += quantity;
  }
}

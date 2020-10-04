import 'dart:math';

class Market {
  int wheatPrice;
  int wheatSold = 0;
  Random random = new Random();

  int get getWheatPrice => wheatPrice;

  set setWheatPrice(int wheatPrice) => this.wheatPrice = wheatPrice;

  int get getWheatSold => this.wheatSold;

  set setWheatSold(int wheatSold) => this.wheatSold = wheatSold;

  Random get getRandom => this.getRandom;
}

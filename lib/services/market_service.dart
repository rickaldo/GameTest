import '../models/market.dart';

class MarketService {
  Market market = new Market();

  Market get getMarket => this.market;

  int calculateWheatPrice() {
    if (market.wheatSold > 100) {
      market.wheatPrice = 1;

      return market.wheatPrice;
    } else if (market.wheatSold < 50) {
      market.wheatPrice = market.random.nextInt(10);
      while (market.wheatPrice == 0) {
        market.wheatPrice = market.random.nextInt(10);
      }

      return market.wheatPrice;
    } else if (market.wheatSold > 50 && market.wheatSold < 100) {
      market.wheatPrice = market.random.nextInt(5);
      while (market.wheatPrice == 0) {
        market.wheatPrice = market.random.nextInt(5);
      }
      return market.wheatPrice;
    }
  }
}

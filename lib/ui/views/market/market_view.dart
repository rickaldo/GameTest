import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import 'market_viewmodel.dart';

class MarktView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MarketViewModel>.reactive(
      builder: (
        context,
        model,
        child,
      ) =>
          Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "Money: " + model.getPlayer.getMoney.toString(),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Wheat in Barn: " + model.getPlayer.getBarn.wheat.toString(),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Barn Capacity: " + model.getPlayer.getBarn.capacity.toString(),
              ),
              SizedBox(
                width: 100,
              ),
              RaisedButton(
                onPressed: model.navigateToField,
                child: Text("Field"),
              ),
            ],
          ),
        ),
        body: Center(
            child: Row(
          children: [
            RaisedButton(
              onPressed: model.player.barn.wheat > 10
                  ? () => model.sellWheat(int.parse(model.showWheatPrice()), 10)
                  : null,
              child: Text(
                model.showWheatPrice(),
              ),
            ),
            
          ],
        )),
      ),
      viewModelBuilder: () => MarketViewModel(),
    );
  }
}

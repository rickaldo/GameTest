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
              Text("Money: "),
              SizedBox(
                width: 10,
              ),
              Text("Wheat in Barn: "),
              SizedBox(
                width: 10,
              ),
              Text("Barn Capacity: "),
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
              onPressed: null,
              child: Text(
                "model.showWheatPrice()",
              ),
            ),
          ],
        )),
      ),
      viewModelBuilder: () => MarketViewModel(),
    );
  }
}

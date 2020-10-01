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
              RaisedButton(
                onPressed: model.navigateToField,
                child: Text("Field"),
              ),
            ],
          ),
        ),
        body: Center(
          child: Text(model.showWheatPrice()),
        ),
      ),
      viewModelBuilder: () => MarketViewModel(),
    );
  }
}

import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import 'market_viewmodel.dart';

class MarktView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MarketViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text("HI"),
        ),
      ),
      viewModelBuilder: () => MarketViewModel(),
    );
  }
}

import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import 'market_viewmodel.dart';

class MarktView extends StatelessWidget {
  const MarktView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MarketViewModel>.reactive(
      builder: (
        context,
        model,
        child,
      ) =>
          Center(
        child: Row(
          children: [
            Text(model.showWheatPrice()),
            Text(model.getPlayer().getField(1).earnings.toString()),
          ],
        ),
      ),
      viewModelBuilder: () => MarketViewModel(),
    );
  }
}

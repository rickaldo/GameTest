import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import '../../../models/player.dart';
import '../../../widget/field_colums_widget.dart';
import '../../../services/player_service.dart';
import 'field_viewmodel.dart';

class FieldView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Player player = PlayerService().getPlayer();
    return ViewModelBuilder<FieldViewModel>.reactive(
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
                "Savings: " + player.getBarn().wheat.toString(),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "UpgradeCost Barn: " + player.getBarn().upgradeCost.toString(),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Level: " + player.getField("field1").lvl.toString(),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "UpgradeCost: " +
                    player.getField("field1").upgradeCost.toString(),
              ),
              SizedBox(
                width: 100,
              ),
              RaisedButton(
                onPressed: model.navigateToMarket,
                child: Text("Market"),
              ),
            ],
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              fieldColumn(player, "field1", model),
              SizedBox(
                width: 50,
              ),
              fieldColumn(player, "field2", model),
              SizedBox(
                width: 200,
              ),
              RaisedButton(
                onPressed:
                    player.isBarnUpgradeble() ? player.upgradeBarn : null,
                child: Text("Upgrade Barn"),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => FieldViewModel(),
    );
  }
}

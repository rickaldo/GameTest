import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import 'field_viewmodel.dart';

class FieldView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              Text("Savings: " + model.barn().wheat.toString()),
              SizedBox(
                width: 10,
              ),
              Text("Level: " + model.field().lvl.toString()),
              SizedBox(
                width: 10,
              ),
              Text("UpgradeCost: " + model.field().upgradeCost.toString()),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: model.harvestField,
                child: Text("Harvest"),
              ),
              RaisedButton(
                onPressed: model.upgradeField,
                child: Text("Upgrade"),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => FieldViewModel(),
    );
  }
}

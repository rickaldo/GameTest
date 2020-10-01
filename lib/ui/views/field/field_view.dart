import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import '../../../widget/field_colums_widget.dart';

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
              Text("UpgradeCost Barn: " + model.barn().upgradeCost.toString()),
              SizedBox(
                width: 10,
              ),
              Text("Level: " + model.field("field1").lvl.toString()),
              SizedBox(
                width: 10,
              ),
              Text("UpgradeCost: " +
                  model.field("field1").upgradeCost.toString()),
            ],
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FieldColumn(model, "field1"),
              SizedBox(
                width: 50,
              ),
              FieldColumn(model, "field2"),
              SizedBox(
                width: 200,
              ),
              RaisedButton(
                onPressed: model.isBarnUpgradeble() ? model.upgradeBarn : null,
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

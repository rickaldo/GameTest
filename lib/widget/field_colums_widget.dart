import 'package:flutter/material.dart';
import 'package:stackedDrunk/ui/views/field/field_viewmodel.dart';

Widget FieldColumn(FieldViewModel model, String field) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      RaisedButton(
        onPressed: model.busy(field)
            ? null
            : () => model.harvestField(model.field(field), field),
        child: Text("Harvest " + field),
      ),
      RaisedButton(
        onPressed: model.isFieldUpgradeble(model.field(field))
            ? () => model.upgradeField(model.field(field))
            : null,
        child: Text("Upgrade"),
      ),
    ],
  );
}

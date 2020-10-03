import 'package:flutter/material.dart';
import 'package:stackedDrunk/ui/views/field/field_viewmodel.dart';

Widget fieldColumn(FieldViewModel model, String field) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      RaisedButton(
        onPressed: model.getPlayer.getField(field).isUnlocked
            ? model.busy(field)
                ? null
                : () =>
                    model.harvestField(model.getPlayer.getField(field), field)
            : null,
        child: model.getPlayer.getField(field).isUnlocked
            ? Text("Harvest " + field)
            : Text("Unlock " + field),
      ),
      RaisedButton(
        onPressed:
            model.getPlayer.isFieldUpgradeble(model.getPlayer.getField(field))
                ? () => model.upgradeField(model.getPlayer.getField(field))
                : null,
        child: Text("Upgrade"),
      ),
    ],
  );
}

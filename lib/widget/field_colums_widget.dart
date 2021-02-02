import 'package:flutter/material.dart';
import 'package:stackedDrunk/ui/views/field/field_viewmodel.dart';

Widget fieldColumn(FieldViewModel model, int index) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      RaisedButton(
        onPressed: model.getPlayer().getField(index).isUnlocked
            ? model.busy(index)
                ? null
                : () =>
                    model.harvestField(model.getPlayer().getField(index), index)
            : null,
        child: model.getPlayer().getField(index).isUnlocked
            ? Text(
                "Harvest Field" + index.toString(),
              )
            : Text(
                "Unlock Field" + index.toString(),
              ),
      ),
      RaisedButton(
        onPressed: model
                .getPlayer()
                .isFieldUpgradeble(model.getPlayer().getField(index))
            ? () => model.upgradeField(model.getPlayer().getField(index))
            : null,
        child: Text("Upgrade"),
      ),
    ],
  );
}

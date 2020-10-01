import 'package:flutter/material.dart';
import 'package:stackedDrunk/ui/views/field/field_viewmodel.dart';
import '../models/player.dart';

Widget fieldColumn(Player player, String field, FieldViewModel model) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      RaisedButton(
        onPressed: player.getField(field).isUnlocked
            ? model.busy(field)
                ? null
                : () => player.harvestField(player.getField(field), field)
            : null,
        child: player.getField(field).isUnlocked
            ? Text("Harvest " + field)
            : Text("Unlock " + field),
      ),
      RaisedButton(
        onPressed: player.isFieldUpgradeble(player.getField(field))
            ? () => player.upgradeField(player.getField(field))
            : null,
        child: Text("Upgrade"),
      ),
    ],
  );
}

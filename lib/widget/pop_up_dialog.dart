import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedDrunk/ui/views/field/field_viewmodel.dart';

Widget buildPopupDialog(BuildContext context, FieldViewModel model, int index) {
  var field = model.getPlayer().getField(index);
  return new AlertDialog(
    title: const Center(
      child: Text("Upgrade"),
    ),
    content: Column(
      children: [
        Text(
          "Lvl: " + field.getLvl.toString(),
        ),
        Text(
          "Earnings: " + field.getEarnings.toString(),
        ),
        Text(
          "UpgradeCosts: " + field.getUpgradeCost.toString(),
        ),
      ],
    ),
    actions: <Widget>[
      new ToggleButtons(
        children: <Widget>[
          Icon(Icons.ac_unit),
          Icon(Icons.call),
          Icon(Icons.cake),
        ],
        onPressed: (int index) {
          model.upgradeSteps(index);
        },
        isSelected: model.getSelected(),
      ),
      new FlatButton(
        onPressed: () {
          null;
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Upgrade'),
      ),
      new FlatButton(
        onPressed: () {
          model.popBack();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}

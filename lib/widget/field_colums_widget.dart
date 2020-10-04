import 'package:flutter/material.dart';
import 'package:stackedDrunk/ui/views/field/field_viewmodel.dart';

Widget fieldColumn(FieldViewModel model, String field) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      RaisedButton(onPressed: null, child: Text("Harvest " + field)),
      RaisedButton(
        onPressed: null,
        child: Text("Upgrade"),
      ),
    ],
  );
}

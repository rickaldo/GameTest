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
          GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              (MediaQuery.of(context).orientation == Orientation.portrait)
                  ? 2
                  : 4,
        ),
        itemCount: 12,
        padding: EdgeInsets.all(5),
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            borderOnForeground: true,
            elevation: 10.0,
            child: GridTile(
              header: Center(
                child: Text(
                  "Field " + (index + 1).toString(),
                ),
              ),
              child: FittedBox(
                child: Image.asset('assets/img/img.png'),
              ),
              footer: FittedBox(
                child: Row(
                  children: [
                    Text(
                      "Lvl: " +
                          model.getPlayer().getField(index).lvl.toString(),
                    ),
                    Text(
                      "Ertrag: " +
                          model
                              .getPlayer()
                              .getField(index)
                              .getEarnings
                              .toString(),
                    ),
                    Text(
                      "Upgrade Kosten: " +
                          model
                              .getPlayer()
                              .getField(index)
                              .getUpgradeCost
                              .toString(),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      // RaisedButton(
      //   onPressed: model.getPlayer().isBarnUpgradeble()
      //       ? model.getPlayer().upgradeBarn
      //       : null,
      //   child: Text("Upgrade Barn"),
      // ),
      //],

      viewModelBuilder: () => FieldViewModel(),
    );
  }
}

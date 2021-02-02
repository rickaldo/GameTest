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
          title: FittedBox(
            fit: BoxFit.fitWidth,
            child: Row(
              children: [
                Text(
                  "Savings: " + model.getPlayer().getBarn().wheat.toString(),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "UpgradeCost Barn: " +
                      model.getPlayer().getBarn().upgradeCost.toString(),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Level: " + model.getPlayer().getField(1).lvl.toString(),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "UpgradeCost: " +
                      model.getPlayer().getField(1).upgradeCost.toString(),
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
        ),
        // body: Column(
        //   children: [
        //     FittedBox(
        //       fit: BoxFit.fitWidth,
        //       alignment: Alignment.center,
        //       child: Row(
        //         children: [
        //           fieldColumn(model, "field1"),
        //           SizedBox(
        //             width: 50,
        //           ),
        //           fieldColumn(model, "field2"),
        //           SizedBox(
        //             width: 200,
        //           ),
        //         ],
        //       ),
        //     ),
        body: GridView.builder(
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
            return Center(
              child: Text("Go Fuck Yourself"),
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
      ),
      viewModelBuilder: () => FieldViewModel(),
    );
  }
}

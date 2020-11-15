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
              Text("Money: "),
              SizedBox(
                width: 10,
              ),
              Text(
                "Wheat in Barn: ",
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Barn Capacity: ",
              ),
              SizedBox(
                width: 100,
              ),
              RaisedButton(
                onPressed: model.navigateToMarket,
                child: Text("Market"),
              ),
              RaisedButton(onPressed: null)
            ],
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              fieldColumn(model, "field1"),
              SizedBox(
                width: 50,
              ),
              fieldColumn(model, "field2"),
              SizedBox(
                width: 200,
              ),
              RaisedButton(
                onPressed: null,
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

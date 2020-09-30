import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

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
        body: Center(
          child: Row(
            children: [
              RaisedButton(onPressed: null),
              Text(model.debug()),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => FieldViewModel(),
    );
  }
}

import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import 'startMenu_viewmodel.dart';

class StartMenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartMenuViewModel>.nonReactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: model.navigateToField,
                child: Text("Start"),
              ),
              RaisedButton(
                onPressed: null,
                child: Text("Options"),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => StartMenuViewModel(),
    );
  }
}

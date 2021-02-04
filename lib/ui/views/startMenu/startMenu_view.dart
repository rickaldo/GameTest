import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'package:smart_flare/smart_flare.dart';

import 'startMenu_viewmodel.dart';

class StartMenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ViewModelBuilder<StartMenuViewModel>.nonReactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          // child: Align(
          //     alignment: Alignment.centerRight,
          //     child: PanFlareActor(
          //       width: 135.0,
          //       height: screenSize.height,
          //       filename: 'assets/slideout-menu.flr',
          //       openAnimation: 'open',
          //       closeAnimation: 'close',
          //       direction: ActorAdvancingDirection.RightToLeft,
          //       threshold: 20.0,
          //       reverseOnRelease: true,
          //       completeOnThresholdReached: true,
          //       activeAreas: [
          //         RelativePanArea(
          //           area: Rect.fromLTWH(0, 0.7, 1.0, 0.3),
          //           debugArea: false,
          //         ),
          //       ],
          //     )
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

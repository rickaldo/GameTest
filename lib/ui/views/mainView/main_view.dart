import 'package:stackedDrunk/ui/views/field/field_view.dart';
import 'package:stackedDrunk/ui/views/market/market_view.dart';

import 'main_viewmodel.dart';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainView extends StatelessWidget {
  const MainView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (
        context,
        model,
        child,
      ) =>
          Scaffold(
        appBar: AppBar(
          title: FittedBox(
            child: Text(
              "Somethin Cool!",
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(15),
              child: RaisedButton(
                onPressed: () => model.logOut(),
                child: Text(
                  "Options?",
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: model.currentIndex,
          onTap: model.setIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storage),
              label: "Markt",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lens_rounded),
              label: "F&E",
            ),
          ],
        ),
        body: getViewForIndex(model.currentIndex),
      ),
      viewModelBuilder: () => MainViewModel(),
    );
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return FieldView();
      case 1:
        return MarktView();
      default:
        return FieldView();
    }
  }
}

import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import '../../../widget/pop_up_dialog.dart';
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
              header: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.info_sharp),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => buildPopupDialog(
                          context,
                          model,
                          index,
                        ),
                      );
                    },
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  model.harvestField(index);
                  print(index);
                },
                child: FittedBox(
                  child: Image.asset('assets/img/img.png'),
                ),
              ),
              footer: Text(
                "Field: " + index.toString(),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
      viewModelBuilder: () => FieldViewModel(),
    );
  }
}

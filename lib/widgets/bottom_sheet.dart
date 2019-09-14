import 'package:flutter/material.dart';

class MyBottomSheet {
  Map<String, List<Color>> sheetColor = {
    'blue': [Color(0xff2979FF), Color(0xff0D47A1)],
    'orange': [Color(0xffFF8C00), Color(0xffF55932)],
    'green': [Color(0xff009688), Color(0xff00695C)],
    'red': [Color(0xffEF5350), Color(0xffD32F2F)],
  };

  showSweetBottomSheet(
      {@required BuildContext context,
      @required String title,
      @required String description,
      @required String type,
      List<FlatButton> actions,
      bool haveIcon = false,
      IconData icon}) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: double.infinity,
                color: sheetColor[type][0],
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(fontSize: 28),
                      textAlign: TextAlign.start,
                    ),
                    _buildContent(haveIcon, description, icon: icon)
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                color: sheetColor[type][1],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: actions,
                ),
              )
            ],
          );
        });
  }

  _buildContent(bool haveIcon, String description, {IconData icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SingleChildScrollView(
          child: haveIcon
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      description,
                      style: TextStyle(fontSize: 18),
                    )),
                    Icon(
                      icon,
                      size: 52,
                    )
                  ],
                )
              : Text(
                  description,
                  style: TextStyle(fontSize: 18),
                )),
    );
  }
}

class BottomSheetType {
  static const SUCCESS = 'green';
  static const DANGER = 'red';
  static const NICE = 'blue';
  static const WARNING = 'orange';
}

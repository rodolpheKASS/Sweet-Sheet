import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final BuildContext context;
  final String text;
  final VoidCallback onClick;

  const LargeButton(
      {Key key, @required this.context, @required this.text, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: FlatButton(
        padding: const EdgeInsets.all(30),
        color: Colors.black45,
        onPressed: onClick,
        child: Container(
          width: double.infinity,
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

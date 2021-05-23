import 'package:calculator/models/logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Button extends StatelessWidget {
  Logic logic = Get.put(Logic());
  final String text;
  final bool big;
  final void Function(String) cb;

  Button({this.text, this.big = false, @required this.cb});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: RaisedButton(
            child: Text(text, style: TextStyle(fontSize: 30)),
            onPressed: () => logic.getValue(text)),
      ),
    );
  }
}

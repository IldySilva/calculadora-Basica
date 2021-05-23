import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';

class ButtonRows extends StatelessWidget {
  final List<Button> buttons;

  ButtonRows(this.buttons);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons,
      ),
    );
  }
}

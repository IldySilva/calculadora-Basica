import 'package:calculator/models/logic.dart';
import 'package:calculator/widgets/display.dart';
import 'package:calculator/widgets/keyboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  Logic logic = Get.put(Logic());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Display(logic.value.string),
            KeyBoard(logic.getValue),
          ],
        ),
      ),
    );
  }
}

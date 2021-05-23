import 'package:calculator/models/logic.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';

class Display extends StatefulWidget {
  final String text;
  Display(this.text);

  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  Logic logic = Get.put(Logic());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(() {
                  return AutoSizeText(logic.value.string,
                      minFontSize: 20,
                      maxFontSize: 70,
                      maxLines: 1,
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.white, fontSize: 70));
                })),
          ],
        ),
      ),
    );
  }
}

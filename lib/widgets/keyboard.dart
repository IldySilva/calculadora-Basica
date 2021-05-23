import 'package:calculator/widgets/button.dart';
import 'package:calculator/widgets/button_rows.dart';
import 'package:flutter/material.dart';

class KeyBoard extends StatelessWidget {
  final void Function(String) cb;
  KeyBoard(this.cb);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.7,
      child: Column(
        children: [
          ButtonRows([
            Button(
              text: "AC",
              big: true,
              cb: cb,
            ),
            Button(
              text: "%",
              cb: cb,
            ),
            Button(
              text: "/",
              cb: cb,
            ),
          ]),
          ButtonRows([
            Button(
              text: "7",
              cb: cb,
            ),
            Button(
              text: "8",
              cb: cb,
            ),
            Button(
              text: "9",
              cb: cb,
            ),
            Button(
              text: "x",
              cb: cb,
            ),
          ]),
          ButtonRows([
            Button(
              text: "4",
              cb: cb,
            ),
            Button(
              text: "5",
              cb: cb,
            ),
            Button(
              text: "6",
              cb: cb,
            ),
            Button(
              text: "-",
              cb: cb,
            ),
          ]),
          ButtonRows([
            Button(
              text: "3",
              cb: cb,
            ),
            Button(
              text: "2",
              cb: cb,
            ),
            Button(
              text: "1",
              cb: cb,
            ),
            Button(
              text: "+",
              cb: cb,
            ),
          ]),
          ButtonRows([
            Button(
              text: "0",
              big: true,
              cb: cb,
            ),
            Button(
              text: ".",
              cb: cb,
            ),
            Button(
              text: "=",
              cb: cb,
            ),
          ])
        ],
      ),
    );
  }
}

import 'package:get/get.dart';
import 'package:get_rx/get_rx.dart';

class Logic extends GetxController {
  static const operations = ["%", "/", "x", "-", "+", "="];
  final buffer = [0.0, 0.0];
  var bufferIndex = 0;
  bool swipeValue = false;
  String operation;

  var value = "0".obs;

  getValue(String text) {
    if (text == 'AC') {
      allClear();
    } else if (operations.contains(text)) {
      setOperations(text);
    } else {
      addDigit(text);
    }

    return text;
  }

  allClear() {
    value.value = '0';
    buffer.setAll(0, [0.0, 0.0]);
    bufferIndex = 0;
    operation = null;
    swipeValue = false;
  }

  setOperations(String newOperation) {
    if (bufferIndex == 0) {
      if (newOperation != "=") {
        operation = newOperation;
        bufferIndex = 1;
      }
    } else {
      buffer[0] = calculate();
      buffer[1] = 0.0;
      value.value = buffer[0].toString();
      value.value = buffer[0].toString().endsWith(".0")
          ? value.value.split(".")[0]
          : value.value;
    }
    bool isEqualSign = newOperation == "=";
    operation = isEqualSign ? null : newOperation;
    bufferIndex = isEqualSign ? 0 : 1;

    swipeValue = !isEqualSign;
  }

  calculate() {
    switch (operation) {
      case "%":
        return buffer[0] % buffer[1];

      case "/":
        return buffer[0] / buffer[1];

      case "x":
        return buffer[0] * buffer[1];

      case "-":
        return buffer[0] - buffer[1];

      case "+":
        return buffer[0] + buffer[1];

      default:
        return buffer[0];
    }
  }

  addDigit(String digito) {
    final isDot = digito == ".";

    final wipeValue = (value.value == "0" && !isDot) || swipeValue;

    final isEmpty = isDot ? "0" : "";

    final currentValue = wipeValue ? isEmpty : value.value;
    if (isDot && value.value.contains(".") && !wipeValue) {
      return;
    }

    value.value = currentValue + digito;
    swipeValue = false;

    buffer[bufferIndex] = double.tryParse(value.value) ?? 0;
    print(buffer);
  }
}

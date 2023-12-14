import 'package:flutter/material.dart';

class CalculatorButtons extends StatelessWidget {
  final String? text;
  final int? fillColor;
  final Function? callBack;

  const CalculatorButtons({super.key, this.text, this.fillColor, this.callBack});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: TextButton(
          onPressed: () {
            callBack!(text);
          },
          style: TextButton.styleFrom(backgroundColor: Color(fillColor!)),
          child: Text(text!, style: const TextStyle(fontSize: 23, color: Colors.white))),
    );
  }
}

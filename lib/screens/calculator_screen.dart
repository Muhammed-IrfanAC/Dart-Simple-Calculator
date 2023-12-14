import 'package:calculator/utils/button_functions.dart';
import 'package:calculator/widgets/calculator_buttons.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {

  String currentText = '';
  String history ='';
  ButtonFunction buttonFunction = ButtonFunction();

  void updateState(String value) {
    setState(() {
      buttonFunction.buttonOnClick(value);
      currentText = buttonFunction.textToDisplay;
      history = buttonFunction.history;
    });
    print('After update: $currentText');
    print('After update: $history');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade700,
      appBar: AppBar(
        backgroundColor: Colors.white60,
        title: const Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: const Alignment(1, 1),
            child: Text(history,
                style: const TextStyle(fontSize: 28, color: Colors.white70)),
          ),
          Container(
            alignment: const Alignment(1, 1),
            child: Text(currentText,
                style: const TextStyle(fontSize: 46, color: Colors.white)),
          ),
          Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButtons(
                      text: 'AC',
                      fillColor: 0xFFAB47BC,
                      callBack: updateState),
                  CalculatorButtons(
                      text: 'C',
                      fillColor: 0xFFAB47BC,
                      callBack: updateState),
                  CalculatorButtons(
                      text: '<',
                      fillColor: 0xFFAB47BC,
                      callBack: updateState),
                  CalculatorButtons(
                      text: '/',
                      fillColor: 0xFFAB47BC,
                      callBack: updateState),
                ],
              )),
          Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButtons(
                      text: '7',
                      fillColor: 0xFF6A1B9A,
                      callBack: updateState),
                  CalculatorButtons(
                      text: '8',
                      fillColor: 0xFF6A1B9A,
                      callBack: updateState),
                  CalculatorButtons(
                      text: '9',
                      fillColor: 0xFF6A1B9A,
                      callBack: updateState),
                  CalculatorButtons(
                      text: 'x',
                      fillColor: 0xFFAB47BC,
                      callBack: updateState),
                ],
              )),
          Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButtons(
                      text: '4',
                      fillColor: 0xFF6A1B9A,
                      callBack: updateState),
                  CalculatorButtons(
                      text: '5',
                      fillColor: 0xFF6A1B9A,
                      callBack: updateState),
                  CalculatorButtons(
                      text: '6',
                      fillColor: 0xFF6A1B9A,
                      callBack: updateState),
                  CalculatorButtons(
                      text: '-',
                      fillColor: 0xFFAB47BC,
                      callBack: updateState),
                ],
              )),
          Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButtons(
                      text: '1',
                      fillColor: 0xFF6A1B9A,
                      callBack: updateState),
                  CalculatorButtons(
                      text: '2',
                      fillColor: 0xFF6A1B9A,
                      callBack: updateState),
                  CalculatorButtons(
                      text: '3',
                      fillColor: 0xFF6A1B9A,
                      callBack: updateState),
                  CalculatorButtons(
                      text: '+',
                      fillColor: 0xFFAB47BC,
                      callBack: updateState),
                ],
              )),
          Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButtons(
                      text: '00',
                      fillColor: 0xFF6A1B9A,
                      callBack: updateState),
                  CalculatorButtons(
                      text: '0',
                      fillColor: 0xFF6A1B9A,
                      callBack: updateState),
                  CalculatorButtons(
                      text: '.',
                      fillColor: 0xFF6A1B9A,
                      callBack: updateState),
                  CalculatorButtons(
                      text: '=',
                      fillColor: 0xFFAB47BC,
                      callBack: updateState),
                ],
              )),
        ],
      ),
    );
  }
}

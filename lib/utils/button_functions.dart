class ButtonFunction {
  double firstNum = 0;
  double secondNum = 0;
  String history = '';
  String textToDisplay = '';
  String result = '';
  String operations = '';

  void buttonOnClick(String btnValue) {
    if (btnValue == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
    } else if (btnValue == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
      history = '';
    } else if (btnValue == '+' ||
        btnValue == '-' ||
        btnValue == 'x' ||
        btnValue == '/') {
      operations = btnValue;
      firstNum = double.tryParse(textToDisplay)!;
      result = '';
      textToDisplay = '';
    } else if (btnValue == '=') {
      secondNum = double.tryParse(textToDisplay)!;
      if (operations == '+') {
        result = (firstNum + secondNum).toString();
        textToDisplay = result;
      }
      if (operations == '-') {
        result = (firstNum - secondNum).toString();
        textToDisplay = result;
      }
      if (operations == 'x') {
        result = (firstNum * secondNum).toString();
        textToDisplay = result;
      }
      if (operations == '/') {
        if(secondNum == 0){
          textToDisplay = 'Operation failed!';
        }else {
          result = (firstNum / secondNum).toString();
          textToDisplay = result;
        }
      }
      history = '$firstNum $operations $secondNum';
    } else if(btnValue == '<'){
      textToDisplay = textToDisplay.substring(0, textToDisplay.length-1);
    }
    else {
      textToDisplay = (textToDisplay + btnValue).toString();
    }
  }
}

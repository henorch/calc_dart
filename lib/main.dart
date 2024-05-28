import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/calculator_button.dart';

void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  int firstnum = 0;
  int secondnum = 0;
  String history = '';
  String textToDisplay = '';
  String res = "";
  String operations = "";

  void btnonClick(String btnVal) {
    if (btnVal == 'C') {
      textToDisplay = "";
      firstnum = 0;
      secondnum = 0;
      res = "";
    } else if (btnVal == 'AC') {
      textToDisplay = "";
      firstnum = 0;
      secondnum = 0;
      res = "";
      history = "";
    } else if (btnVal == "+/-") {
      if (textToDisplay[0] != "-") {
        res = "-" + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == "<") {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'x' ||
        btnVal == '/') {
      firstnum = int.parse(textToDisplay);
      res = '';
      operations = btnVal;
    } else if (btnVal == '=') {
      secondnum = int.parse(textToDisplay);
      if (operations == "+") {
        res = (firstnum + secondnum).toString();
        history =
            firstnum.toString() + operations.toString() + secondnum.toString();
      }
      if (operations == "-") {
        res = (firstnum - secondnum).toString();
        history =
            firstnum.toString() + operations.toString() + secondnum.toString();
      }
      if (operations == "x") {
        res = (firstnum * secondnum).toString();
        history =
            firstnum.toString() + operations.toString() + secondnum.toString();
      }
      if (operations == "/") {
        res = (firstnum / secondnum).toString();
        history =
            firstnum.toString() + operations.toString() + secondnum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Calculator"),
            backgroundColor: Colors.amberAccent,
          ),
          body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              alignment: const Alignment(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Text(
                  history,
                  style: const TextStyle(fontSize: 45.0, color: Colors.grey),
                ),
              ),
            ),
            Container(
              alignment: const Alignment(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  textToDisplay,
                  style: const TextStyle(fontSize: 60.0),
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              CalculatorButton(
                text: 'AC',
                textSize: 30.0,
                textColor: 0xFF97565,
                fillColor: const Color.fromARGB(255, 180, 173, 173),
                callBack: btnonClick,
              ),
              CalculatorButton(
                text: 'C',
                textSize: 30.0,
                textColor: 0xFF97565,
                fillColor: const Color.fromARGB(255, 180, 173, 173),
                callBack: btnonClick,
              ),
              CalculatorButton(
                text: '<',
                textSize: 30.0,
                textColor: 0xFF97565,
                callBack: btnonClick,
                fillColor: Colors.amber,
              ),
              CalculatorButton(
                text: '/',
                textSize: 30.0,
                textColor: 0xFF97565,
                callBack: btnonClick,
                fillColor: Colors.amber,
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              CalculatorButton(
                text: '9',
                textSize: 30.0,
                textColor: 0xFF97565,
                fillColor: const Color.fromARGB(255, 180, 173, 173),
                callBack: btnonClick,
              ),
              CalculatorButton(
                text: '8',
                callBack: btnonClick,
                textSize: 30.0,
                textColor: 0xFF97565,
                fillColor: const Color.fromARGB(255, 180, 173, 173),
              ),
              CalculatorButton(
                text: '7',
                textSize: 30.0,
                textColor: 0xFF97565,
                callBack: btnonClick,
                fillColor: const Color.fromARGB(255, 180, 173, 173),
                // callBack: (){},
              ),
              CalculatorButton(
                text: '+',
                textSize: 30.0,
                callBack: btnonClick,
                textColor: 0xFF97565,
                fillColor: Colors.amber,
                // callBack: (){},
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              CalculatorButton(
                text: '6',
                textSize: 30.0,
                callBack: btnonClick,
                textColor: 0xFF97565,
                fillColor: const Color.fromARGB(255, 180, 173, 173),
                // callBack: (){},
              ),
              CalculatorButton(
                text: '5',
                textSize: 30.0,
                callBack: btnonClick,
                textColor: 0xFF97565,
                fillColor: const Color.fromARGB(255, 180, 173, 173),
                // callBack: (){},
              ),
              CalculatorButton(
                text: '4',
                textSize: 30.0,
                callBack: btnonClick,
                textColor: 0xFF97565,
                fillColor: const Color.fromARGB(255, 180, 173, 173),
                // callBack: (){},
              ),
              CalculatorButton(
                text: '-',
                textSize: 30.0,
                textColor: 0xFF97565,
                callBack: btnonClick,
                fillColor: Colors.amber,
                // callBack: (){},
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              CalculatorButton(
                text: '3',
                textSize: 30.0,
                callBack: btnonClick,
                textColor: 0xFF97565,
                fillColor: const Color.fromARGB(255, 180, 173, 173),
                // callBack: (){},
              ),
              CalculatorButton(
                text: '2',
                textSize: 30.0,
                callBack: btnonClick,
                textColor: 0xFF97565,
                fillColor: const Color.fromARGB(255, 180, 173, 173),
                // callBack: (){},
              ),
              CalculatorButton(
                text: '1',
                callBack: btnonClick,
                textSize: 30.0,
                textColor: 0xFF97565,
                fillColor: const Color.fromARGB(255, 180, 173, 173),
                // callBack: (){},
              ),
              CalculatorButton(
                text: 'x',
                textSize: 30.0,
                textColor: 0xFF97565,
                callBack: btnonClick,
                fillColor: Colors.amber,
                // callBack: (){},
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              CalculatorButton(
                text: '+/-',
                textSize: 30.0,
                callBack: btnonClick,
                textColor: 0xFF97565,
                fillColor: const Color.fromARGB(255, 180, 173, 173),
                // callBack: (){},
              ),
              CalculatorButton(
                text: '0',
                textSize: 30.0,
                callBack: btnonClick,
                textColor: 0xFF97565,
                fillColor: const Color.fromARGB(255, 180, 173, 173),
                // callBack: (){},
              ),
              CalculatorButton(
                text: '00',
                textSize: 30.0,
                textColor: 0xFF97565,
                callBack: btnonClick,
                fillColor: const Color.fromARGB(255, 180, 173, 173),
                // callBack: (){},
              ),
              CalculatorButton(
                text: '=',
                textSize: 30.0,
                callBack: btnonClick,
                textColor: 0xFF97565,
                fillColor: Colors.amber,
                // callBack: (){},
              ),
            ]),
          ])),
    );
  }
}

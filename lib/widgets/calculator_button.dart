import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int textColor;
  final Color fillColor;
  final Function callBack;
  final double textSize;

  const CalculatorButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.fillColor,
      required this.callBack,
      required this.textSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 100.0,
        width: 100.0,
        child: FilledButton(
          onPressed: () => callBack(text),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(fillColor),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: textSize,
            ),
          ),
        ),
      ),
    );
  }
}

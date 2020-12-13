import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;

  CalculatorButton({this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: MaterialButton(
        onPressed: () {},
        color: Color(0xFF666666),
        textColor: Colors.white,
        elevation: 2.0,
        child: Text(
            text,
          style: TextStyle(
            fontSize: 20.0
          ),
        ),
        padding: EdgeInsets.all(20),
        shape: CircleBorder(),
      ),
    );
  }
}

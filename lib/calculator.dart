import 'package:flutter/material.dart';
import 'calculatorButton.dart';

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2B2B2B),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.short_text),
            Text("Calculator"),
            Icon(Icons.ac_unit),
          ],
        ),
      ),
      backgroundColor: Color(0xFF2B2B2B),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF3B3B3B),
                      ),
                      height: 180,
                      alignment: Alignment.bottomRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '322/10  ',
                            style: TextStyle(
                              color: Color(0xFFBDBDBD),
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            '32.2 ',
                            style: TextStyle(
                              color: Color(0xFFBFF4DB),
                              fontSize: 80.0,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CalculatorButton(text: "C",),
                    CalculatorButton(text: "7",),
                    CalculatorButton(text: "4",),
                    CalculatorButton(text: "1",),
                    CalculatorButton(text: "0",),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CalculatorButton(text: "/",),
                    CalculatorButton(text: "8",),
                    CalculatorButton(text: "5",),
                    CalculatorButton(text: "2",),
                    CalculatorButton(text: ".",),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(text: "%",),
                    CalculatorButton(text: "9",),
                    CalculatorButton(text: "6",),
                    CalculatorButton(text: "3",),
                    CalculatorButton(text: "=",),
                  ],
                ),
              ),
              Expanded(
                child: Column(  
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CalculatorButton(text: "+",),
                    CalculatorButton(text: "X",),
                    CalculatorButton(text: "-",),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 14.0),
                      child: SizedBox(
                        height: 130,
                        child: RotatedBox(
                            quarterTurns: 1,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                                padding: EdgeInsets.all(10),
                                color: Color(0xFF666666),
                                onPressed: () {},
                                child: Text(
                                    '=',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.white,
                                  ),
                                ),
                            ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}


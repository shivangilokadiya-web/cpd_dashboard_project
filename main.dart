import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Calculator(),
  ));
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        children: [
          Text(
            result,
            style: const TextStyle(fontSize: 35),
          ),
          const SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button('1'),
              button('2'),
              button('3'),
              button('+'),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button('4'),
              button('5'),
              button('6'),
              button('-'),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button('7'),
              button('8'),
              button('9'),
              button('×'),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button('C'),
              button('0'),
              button('='),
              button('÷'),
            ],
          ),
        ],
      ),
    );
  }

  Widget button(String text) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (text == 'C') {
            result = '';
          } else {
            result += text;
          }
        });
      },
      child: Text(
        text,
        style: const TextStyle(fontSize: 22),
      ),
    );
  }
}
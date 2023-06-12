import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
    Widget calcbuttom(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      height: 80,
      width: 80,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: btncolor,
          shape: const CircleBorder(),
        ),
        onPressed: () {
        },
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "test",
                    textAlign: TextAlign.left,
                    style: const TextStyle(color: Colors.white, fontSize: 100),
                  ),
                ),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbuttom('C', Colors.grey, Colors.black),
                calcbuttom('+/-', Colors.grey, Colors.black),
                calcbuttom('%', Colors.grey, Colors.black),
                calcbuttom('÷', Colors.amber.shade700, Colors.white),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbuttom('7', Colors.grey.shade800, Colors.white),
                calcbuttom('8', Colors.grey.shade800, Colors.white),
                calcbuttom('9', Colors.grey.shade800, Colors.white),
                calcbuttom('x', Colors.amber.shade700, Colors.white),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbuttom('6', Colors.grey.shade800, Colors.white),
                calcbuttom('5', Colors.grey.shade800, Colors.white),
                calcbuttom('4', Colors.grey.shade800, Colors.white),
                calcbuttom('-', Colors.amber.shade700, Colors.white),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbuttom('1', Colors.grey.shade800, Colors.white),
                calcbuttom('2', Colors.grey.shade800, Colors.white),
                calcbuttom('3', Colors.grey.shade800, Colors.white),
                calcbuttom('+', Colors.amber.shade700, Colors.white),
              ],
            ),
          ], 
        ),
        
      ),
    );
  }
}

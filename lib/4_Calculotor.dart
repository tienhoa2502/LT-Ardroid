import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double a = 0;
  double b = 0;
  String result = "";

  void performOperation(double Function(double, double) operation) {
    setState(() {
      try {
        double res = operation(a, b);
        result = "= " + res.toString();
      } catch (e) {
        result = "Error";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://img.lovepik.com/free-png/20211225/lovepik-calculator-fill-png-image_400327273_wh860.png',
              height: 860,
              width: 860,
            ),
            SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Nhap A"),
              onChanged: (value) {
                setState(() {
                  a = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Nhap B"),
              onChanged: (value) {
                setState(() {
                  b = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => performOperation((a, b) => a + b),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: Text("+"),
                ),
                ElevatedButton(
                  onPressed: () => performOperation((a, b) => a - b),
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () => performOperation((a, b) => a * b),
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  child: Text("*"),
                ),
                ElevatedButton(
                  onPressed: () => performOperation((a, b) => a / b),
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  child: Text("/"),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              result,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

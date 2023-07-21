import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  List<Color> _backgroundColors = [
    Colors.white,
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
  ];
  int _currentColorIndex = 0;

  void _changeBackgroundColor() {
    setState(() {
      // Thay đổi chỉ mục màu
      _currentColorIndex = (_currentColorIndex + 1) % _backgroundColors.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColors[_currentColorIndex], // Sử dụng màu nền tại chỉ mục hiện tại
      appBar: AppBar(
        title: Text('Change Background Color'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _changeBackgroundColor,
          child: Text('Change Color'),
        ),
      ),
    );
  }
}

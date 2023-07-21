import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: MyHomeScreen(),
    ),
  );
}

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang chủ'),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          width: 390,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tran Le Tien Hoa - 0850080019',
                style: TextStyle(fontSize: 26),
              ),
              SizedBox(
                height: 20,
              ),
              buildRowLayout(),
              SizedBox(
                height: 20,
              ),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
                width: 120,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Dart_programming_language_logo.svg/2560px-Dart_programming_language_logo.svg.png', // Thay thế bằng URL hình ảnh thứ nhất của Flutter
                    width: 100,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Android_logo_2019_%28stacked%29.svg/2346px-Android_logo_2019_%28stacked%29.svg.png', // Thay thế bằng URL hình ảnh thứ hai của Flutter
                width: 100,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Nút đã được nhấn!')),
                  );
                },
                child: Text('Nhấn vào đây!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildRowLayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.green,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.orange,
        height: 100,
        width: 100,
      ),
    ],
  );
}

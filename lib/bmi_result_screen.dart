import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  late final int result;
  late final bool isMale;
  late final int age;

  BmiResultScreen({
    required this.age,
    required this.isMale,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_arrow_left),
          ),
          title: Text('BMI RESULTs'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : $isMale',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Result : $result',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Age : $age',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

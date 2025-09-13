import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;

  // 1. constructor
  // 2. init state
  // 3. build

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  counter--;
                  print(counter);
                  print('minus');
                });
              },
              child: Icon(Icons.remove, color: Colors.red),
            ),
            Text(
              '$counter',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  counter++;
                  print(counter);
                  print('plus');
                });
              },
              child: Icon(Icons.add, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}

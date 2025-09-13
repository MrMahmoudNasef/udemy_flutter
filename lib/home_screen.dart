import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Home Screen'),
        // centerTitle: true,
        actions: [
          IconButton(
            onPressed: onNotification,
            icon: Icon(Icons.notification_important),
          ),
          IconButton(
            onPressed: () {
              print('hello');
            },
            icon: Text('hello'),
          ),
        ],
        elevation: 50.0,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              // padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey[200],
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image(
                        image: NetworkImage(
                          'https://picsum.photos/250?image=9',
                        ),
                        width: 200,
                        height: 200.0,
                      ),
                      Container(
                        width: 200,
                        color: Colors.black,
                        child: Text(
                          'hello',
                          style: TextStyle(color: Colors.red, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onNotification() {
    print('notification');
  }
}

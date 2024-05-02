import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Button, Icon, and Image Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              // Button
              ElevatedButton(
                onPressed: () {
                  // Button press action
                  print('Button pressed!');
                },
                child: Text('Press me'),
              ),

              SizedBox(height: 20), // Adding some space between widgets

              // Icon
              Icon(
                Icons.favorite,
                size: 50,
                color: Colors.red,
              ),
              SizedBox(height: 20),

              // Image from network
              Image.network(
                'https://via.placeholder.com/150',
                width: 150,
                height: 150,
              ),
              SizedBox(height: 20),

              // Image from asset
              Image.asset(
                'assets/flutter_logo.png',
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

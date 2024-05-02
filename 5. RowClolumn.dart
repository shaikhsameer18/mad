import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Text('Row and Column Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Image and Button in a Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/flutter_logo.png', // Replace with your image path
                  width: 100,
                  height: 100,
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Button Pressed Action
                  },
                  child: Text('Button'),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Image and Button in a Column
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/flutter_logo.png', // Replace with your image path
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Button Pressed Action
                  },
                  child: Text('Button'),
                ),
              ],
            ),
          ],
        ),
      ),
    );,
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  }
}

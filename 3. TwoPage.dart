import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStartedScreen(),
    );
  }
}

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Started'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/img/flutter.png', // Replace this with your image path
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=> SecondScreen()),
                );
              },
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Second Screen'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.tab_rounded)),
              Tab(icon: Icon(Icons.tab_rounded)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // First Tab Content
            Center(
              child: Text('First Tab Content'),
            ),
            // Second Tab Content
            Center(
              child: Text('Second Tab Content'),
            ),
          ],
        ),
      ),
    );
  }
}

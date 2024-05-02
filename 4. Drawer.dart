import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Drawer and Bar", home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer and Navigation"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Drawer Header")),
            ListTile(
              title: Text("Item1"),
              onTap: () {
                print("Item1 Pressed");
              },
            ),
            ListTile(
              title: Text("Item2"),
              onTap: () {
                print("Item2 Pressed");
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Text("Main Content"),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: "Home",),

        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
      ],),
    );
  }
}

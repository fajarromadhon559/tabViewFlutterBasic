import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(indicatorColor: Colors.greenAccent, tabs: [
      Tab(
        icon: Icon(Icons.person),
        text: "Account",
      ),
      Tab(
        icon: Icon(Icons.home),
        text: "Home",
      ),
      Tab(
        icon: Icon(Icons.camera),
        text: "Camera",
      ),
    ]);
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Contoh Tab Bar"),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child: Container(color: Colors.redAccent, child: myTabBar)),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Tab1"),
              ),
              Center(
                child: Text("Tab2"),
              ),
              Center(
                child: Text("Tab3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateless
//materila app
//scaffold

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Mapp'), centerTitle: false),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(child: Text("Drawer")),
              ListTile(title: Text("Logout")),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
            SizedBox(height: 10.0),
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
          onDestinationSelected: (value) {},
          selectedIndex: 1,
        ),
      ),
    );
  }
}

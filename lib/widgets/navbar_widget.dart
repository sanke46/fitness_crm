import 'package:flutter/material.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
      ],
      selectedIndex: selectedIndex,
      onDestinationSelected: (value) {
        setState(() {
          selectedIndex = value;
        });
      },
    );
  }
}

import 'package:fitness_crm/views/pages/home_page.dart';
import 'package:fitness_crm/views/pages/profile_page.dart';
import 'package:flutter/material.dart';
import '../widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Mapp")),
      body: pages.elementAt(0),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}

import 'package:fitness_crm/data/notifiers.dart';
import 'package:fitness_crm/views/pages/home_page.dart';
import 'package:fitness_crm/views/pages/profile_page.dart';
import 'package:fitness_crm/views/pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Mapp"),
        actions: [
          IconButton(
            onPressed: () {
              isDarkNotifier.value = !isDarkNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingPage(title: 'Settings');
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifer,
        builder: (context, pageIndex, child) {
          return pages.elementAt(pageIndex);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}

import 'package:chameleonFlutter/data/constants.dart';
import 'package:chameleonFlutter/views/pages/course_page.dart';
import 'package:chameleonFlutter/views/widgets/container_widget.dart';
import 'package:chameleonFlutter/views/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.basicLayout,
      KValue.cleanUi,
      KValue.fixBugs,
      KValue.keyComcepts,
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.0),
            HeroWidget(title: 'Flutter Mapp', nextPage: CoursePage()),
            SizedBox(height: 10.0),
            ...List.generate(list.length, (index) {
              return ContainerWidget(
                title: list.elementAt(index),
                description: 'description',
              );
            }),
          ],
        ),
      ),
    );
  }
}

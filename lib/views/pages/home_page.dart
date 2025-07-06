import 'package:fitness_crm/views/widgets/container_widget.dart';
import 'package:fitness_crm/views/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'Flutter Mapp'),
            ContainerWidget(
              title: 'Basic Layout',
              description: 'This is a description',
            ),
            ContainerWidget(
              title: 'Basic Layout',
              description: 'This is a description',
            ),
          ],
        ),
      ),
    );
  }
}

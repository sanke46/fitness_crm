import 'package:fitness_crm/data/constants.dart';
import 'package:fitness_crm/views/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'Flutter Mapp'),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Base Layout', style: kTextStyle.titleTealText),
                      Text(
                        'the description of this',
                        style: kTextStyle.descriptionText,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

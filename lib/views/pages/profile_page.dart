import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController mController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: mController,
            decoration: InputDecoration(border: OutlineInputBorder()),
            onEditingComplete: () {
              setState(() {});
            },
          ),

          Text(mController.text),
        ],
      ),
    );
  }
}

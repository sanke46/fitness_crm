import 'package:flutter/material.dart';

class ExpendedFlexiblePage extends StatelessWidget {
  const ExpendedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container(height: 20.0, color: Colors.teal)),
              Flexible(
                child: Container(
                  height: 20.0,
                  color: Colors.orange,
                  child: Text('Hello'),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Flexible(
                flex: 4,
                child: Container(
                  height: 20.0,
                  color: Colors.orange,
                  child: Text('Hello'),
                ),
              ),
              Expanded(child: Container(height: 20.0, color: Colors.teal)),
            ],
          ),
        ],
      ),
    );
  }
}

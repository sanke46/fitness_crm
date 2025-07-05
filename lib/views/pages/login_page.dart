import 'package:fitness_crm/views/widget_tree.dart';
import 'package:fitness_crm/views/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController(text: '123');
  TextEditingController controllerPassword = TextEditingController(text: '456');
  String confirmedEmail = '123';
  String cofiermedPw = '456';

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HeroWidget(title: widget.title),
                SizedBox(height: 20.0),
                TextField(
                  controller: controllerEmail,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onEditingComplete: () => setState(() {}),
                ),
                SizedBox(height: 10.0),
                TextField(
                  controller: controllerPassword,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onEditingComplete: () => setState(() {}),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    onLoginPressed();
                  },
                  child: Text(widget.title),
                ),
                SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onLoginPressed() {
    if (confirmedEmail == controllerEmail.text &&
        cofiermedPw == controllerPassword.text) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
      );
    }
  }
}

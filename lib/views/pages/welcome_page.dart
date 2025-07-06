import 'package:fitness_crm/views/pages/login_page.dart';
import 'package:fitness_crm/views/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/lotties/welcome.json', height: 400.0),
                FittedBox(
                  child: Text(
                    'Flutter Mapp',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 150.0,
                      letterSpacing: 50.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return OnboardingPage();
                        },
                      ),
                    );
                  },
                  child: Text('Get started'),
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 55.0),
                  ),
                ),
                SizedBox(height: 10.0),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(title: "Login");
                        },
                      ),
                    );
                  },
                  child: Text('Login'),
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 55.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

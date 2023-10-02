import 'package:flutter/material.dart';

class HockeyPage extends StatefulWidget {
  const HockeyPage({super.key});

  @override
  State<HockeyPage> createState() => _HockeyPageState();
}

class _HockeyPageState extends State<HockeyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/hockey-1.jpg'),
            Image.asset('assets/images/hockey-2.jpg'),
            Image.asset('assets/images/hockey-3.png'),
            Image.asset('assets/images/hockey-4.png'),

          ],
        ),
      ),
    );
  }
}

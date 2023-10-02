import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/food-1.png'),
            Image.asset('assets/images/food-2.png'),
            Image.asset('assets/images/food-3.jpg'),
            Image.asset('assets/images/food-4.jpg'),

          ],
        ),
      ),
    );
  }
}

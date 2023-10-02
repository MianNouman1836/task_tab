import 'package:flutter/material.dart';

import 'Pages/AnimalsPage.dart';
import 'Pages/CricketPage.dart';
import 'Pages/FoodPage.dart';
import 'Pages/FoortballPage.dart';
import 'Pages/HockeyPage.dart';
import 'Pages/IconsPage.dart';
import 'Pages/SparrowPage.dart';
import 'Pages/VectorsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScrollableBoxes(),
    );
  }
}

class MyScrollableBoxes extends StatelessWidget {
  final List<String> boxNames = [
    'Cricket',
    'Hockey',
    'Football',
    'Animals',
    'Sparrow',
    'Icons',
    'Vectors',
    'Food',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal Scrollable Boxes'),

      ),
      body:
      Container(
        height: 200.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: boxNames.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                // Navigate to a different page for each box
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => getBoxPage(boxNames[index]),
                  ),
                );
              },
              child: Container(
                width: 150.0, // Adjust the width as needed
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    boxNames[index],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget getBoxPage(String boxName) {
    // Return a different page for each box name
    switch (boxName) {
      case 'Cricket':
        return CricketPage();
      case 'Hockey':
        return HockeyPage();
      case 'Football':
        return FootballPage();
      case 'Animals':
        return AnimalsPage();
      case 'Sparrow':
        return SparrowPage();
      case 'Icons':
        return IconsPage();
      case 'Vectors':
        return VectorsPage();
      case 'Food':
        return FoodPage();
      default:
        return Container();
    }
  }
}


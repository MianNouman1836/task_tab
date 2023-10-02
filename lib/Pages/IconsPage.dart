import 'package:flutter/material.dart';

class IconsPage extends StatefulWidget {
  const IconsPage({super.key});

  @override
  State<IconsPage> createState() => _IconsPageState();
}

class _IconsPageState extends State<IconsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Icon(Icons.star, size: 500,),
            Icon(Icons.circle_notifications, size: 500,),
            Icon(Icons.menu_book, size: 500,),
            Icon(Icons.security, size: 500,),

          ],
        ),
      ),
    );
  }
}

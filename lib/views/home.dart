import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      bottomNavigationBar: CurvedNavigationBar(items:const[
        Icon(Icons.house),
        Icon(Icons.list),
        Icon(Icons.settings),
        Icon(Icons.person),
      ]),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {




  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: XDBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}

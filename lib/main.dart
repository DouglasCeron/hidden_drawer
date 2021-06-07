import 'package:flutter/material.dart';
import 'package:hidden_drrawer_pet_ui/presentation/animal_selected_screen.dart';
import 'presentation/drawer_screen.dart';
import 'presentation/home_screen.dart';
import 'settings/configuration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            DrawerScreen(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}

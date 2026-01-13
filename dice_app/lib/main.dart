import 'package:flutter/material.dart';
import 'package:dice_app/dice_home_page.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      debugShowCheckedModeBanner: false,
      title: 'DiceApp',
      home: DiceHomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math' as math;

class DiceHomePage extends StatefulWidget {
  const DiceHomePage({super.key});
  @override
  State<DiceHomePage> createState() => _DiceHomePageState();
}

class _DiceHomePageState extends State<DiceHomePage> {
  int _leftDice = 1;
  int _rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(
          'Тапшырма 5',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  transitionBuilder: (child, animation) {
                    return ScaleTransition(scale: animation, child: child);
                  },
                  child: Image.asset(
                    'assets/images/dice_$_leftDice.png',
                    key: ValueKey(_leftDice),
                    color: Colors.white,
                    width: 150,
                    height: 150,
                  ),
                ),

                const SizedBox(width: 20),

                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  transitionBuilder: (child, animation) {
                    return ScaleTransition(scale: animation, child: child);
                  },
                  child: Image.asset(
                    'assets/images/dice_$_rightDice.png',
                    key: ValueKey(_rightDice),
                    color: Colors.white,
                    width: 150,
                    height: 150,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: yrgyt,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 15,
                ),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text(
                'Yrgyt',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void yrgyt() {
    math.Random random = math.Random();

    _leftDice = random.nextInt(6) + 1;
    _rightDice = random.nextInt(6) + 1;
    setState(() {});
  }
}

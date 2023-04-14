import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("assets/images/1.png");
  AssetImage two = AssetImage("assets/images/2.png");
  AssetImage three = AssetImage("assets/images/3.png");
  AssetImage four = AssetImage("assets/images/4.png");
  AssetImage five = AssetImage("assets/images/5.png");
  AssetImage six = AssetImage("assets/images/6.png");
  int diceImage = 1;

  void rollDice() {
    int random = (Random().nextInt(6)) + 1;
    setState(() {
      diceImage = random;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice Roller Game'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/$diceImage.png",
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Number on the dice:$diceImage"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: rollDice,
              child: const Text("Roll Dice"),
            ),
          ],
        ),
      ),
    );
  }
}

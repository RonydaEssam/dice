import 'package:dice/dice_roller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Roll the Dice',
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: DiceRoller(),
        ),
      ),
    );
  }
}

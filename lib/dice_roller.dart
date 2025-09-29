import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice1 = 'assets/images/dice-6.png';
  var activeDice2 = 'assets/images/dice-6.png';

  void rollDice() {
    var dice1 = Random().nextInt(6) + 1;
    var dice2 = Random().nextInt(6) + 1;

    setState(() {
      activeDice1 = 'assets/images/dice-$dice1.png';
      activeDice2 = 'assets/images/dice-$dice2.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDice1,
          width: 200,
        ),
        SizedBox(
          height: 20,
        ),
        Image.asset(
          activeDice2,
          width: 200,
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.amber),
            fixedSize: WidgetStatePropertyAll(Size.fromHeight(50)),
          ),
          child: Text(
            'Roll Dice',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

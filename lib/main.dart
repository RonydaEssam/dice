import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void rollDice() {}

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/dice-6.png',
                width: 200,
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/dice-6.png',
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
          ),
        ),
      ),
    );
  }
}

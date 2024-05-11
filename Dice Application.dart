import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Dart:math';
import 'package:flutter/widgets.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice',
      debugShowCheckedModeBanner: false,
      home: Dice(),
    );
  }
}
  // This widget is the root of your application.
class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int dice1 = 1;
  int dice2 = 1;
  final random = Random();

  void rollDice() {
    setState(() {
      dice1 = random.nextInt(6) + 1;
      dice2 = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice',
            style:TextStyle(color: Colors.white,fontSize: 25)),
        backgroundColor: Colors.deepOrange,
        elevation: 8,
        shadowColor: Colors.black,
      ),
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: rollDice,
                  child: Image.asset(
                    'assets/dice$dice1.png',

                    height: 100,
                    width: 100,
                  ),
                ),
                GestureDetector(
                  onTap: rollDice,
                  child: Image.asset(
                    'assets/dice$dice2.png',
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

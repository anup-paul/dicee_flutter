import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Dice',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDeicNumber = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(
                    () {
                      leftDiceNumber = Random().nextInt(6) + 1;
                      print('Left Button cliked');
                    },
                  );
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightDeicNumber = Random().nextInt(6) + 1;
                    print('Right Button is pressed');
                  });
                },
                child: Image.asset('images/dice$rightDeicNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

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
                  print('Left Button cliked');
                },
                child: Image.asset('images/dice1.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  print('Right Button is pressed');
                },
                child: Image.asset('images/dice2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
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
    return Container();
  }
}

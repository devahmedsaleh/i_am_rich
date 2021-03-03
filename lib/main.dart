import 'package:flutter/material.dart';

void main() => runApp(IAmRich());

class IAmRich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(
            child: const Text('I Am Rich'),
          ),
        ),
        body: Center(
          child: Image(
            image: const AssetImage('images/diamond.png'),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MineField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Campo Minado')),
        body: Container(
          child: const Text('Tabuleiro'),
        ),
      ),
    );
  }
}

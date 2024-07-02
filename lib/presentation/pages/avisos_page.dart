import 'package:flutter/material.dart';

class Avisos extends StatelessWidget {
  const Avisos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Avisos',
          style: TextStyle(fontFamily: 'Teachers'),
        ),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}

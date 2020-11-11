import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Text("Ici ça sera l'écran du purple :)"),
        ),
      ),
    );
  }
}

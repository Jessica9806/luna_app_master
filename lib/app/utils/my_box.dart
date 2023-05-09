import 'package:flutter/material.dart';

class myBox extends StatelessWidget {
  const myBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
      child: Container (
        color: Colors.blue,
      )
    );
  }
}
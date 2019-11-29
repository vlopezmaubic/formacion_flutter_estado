import 'package:flutter/material.dart';

class IncrementButton extends StatelessWidget {
  final VoidCallback onPressed;
  IncrementButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: this.onPressed,
    );
  }
}

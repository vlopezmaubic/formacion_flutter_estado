import 'package:flutter/material.dart';
import 'inherited_counter.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: Theme.of(context).textTheme.display1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _Top(),
          _Bottom(),
        ],
      ),
    );
  }
}

class _Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _TopLeft(),
        _TopRight(),
      ],
    );
  }
}

class _TopLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('A'));
  }
}

class _TopRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('B'));
  }
}

class _Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('C'));
  }
}

import 'package:flutter/widgets.dart';

class InheritedCounter extends InheritedWidget {
  final int counter;
  InheritedCounter({this.counter, Widget child}) : super(child: child);

  static InheritedCounter of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(InheritedCounter)
          as InheritedCounter;

  @override
  bool updateShouldNotify(InheritedCounter old) => this.counter != old.counter;
}

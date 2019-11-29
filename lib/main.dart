import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'button.dart';
import 'body.dart';
import 'inherited_counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formación de estado',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Formación de estado'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Provider<int>.value(
        value: _counter,
        child: HomePageBody(),
      ),
      floatingActionButton: IncrementButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'button.dart';
import 'timer_bloc.dart';

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
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TimerBloc>(
      create: (BuildContext context) => TimerBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<TimerBloc, TimerBlocState>(
                builder: (BuildContext context, TimerBlocState state) {
                  if (state is LoadingTimerBlocState) {
                    return CircularProgressIndicator();
                  } else if (state is CounterTimerBlocState) {
                    final int counter = state.counter;
                    return Text(
                      '$counter',
                      style: Theme.of(context).textTheme.display1,
                    );
                  }
                },
              ),
            ],
          ),
        ),
        floatingActionButton: IncrementButton(),
      ),
    );
  }
}

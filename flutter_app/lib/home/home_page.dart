
import 'package:flutter/material.dart';
import 'package:flutter_app/home/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      provi
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<HomeBloc, int>(                
                builder: (context, value) {
                    Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                  );
                }
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: context.read<HomeBloc>,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
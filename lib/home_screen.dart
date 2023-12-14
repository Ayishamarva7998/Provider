import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter_notifier.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final counterData = Provider.of<CounterNotifier>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('hey!',style: TextStyle(color: Colors.black),),backgroundColor: Colors.limeAccent,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Add +'),
              Text(
                counterData.counter.toString(),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: counterData.increment,
          backgroundColor: Colors.limeAccent,
          tooltip: 'vbbbbb',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}


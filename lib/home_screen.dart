import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter_notifier.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final counterData = Provider.of<CounterNotifier>(context);
    print("Provider");
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Provider!',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.limeAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('How many time user clicked this button'),
              Consumer<CounterNotifier>(builder: (context, data, _) {
                return Text(
                  data.counter.toString(),
                );
              }),
              ElevatedButton(
                  onPressed: counterData.increment,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.limeAccent),
                  child: Icon(Icons.add))
            ],
          ),
        ),
      ),
    );
  }
}

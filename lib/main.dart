import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter_notifier.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterNotifier>(
          create: (_) => CounterNotifier(),
        )
      ],
      child: MaterialApp(
          title: 'Provider',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: HomeScreen()),
    );
  }
}

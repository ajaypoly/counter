import 'package:counter/providers/counter_provider.dart';
import 'package:counter/ui/first_screen.dart';
import 'package:counter/ui/second_screen.dart';
import 'package:counter/ui/third_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Counter App',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
      },
    );
  }
}

void main() {
  runApp(
    CounterProvider(
      counter: Counter(),
      child: MyApp(),
    ),
  );
}

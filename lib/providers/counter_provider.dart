import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}

class CounterProvider extends StatelessWidget {
  final Widget child;
  final Counter counter;

  CounterProvider({required this.child, required this.counter});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: counter,
      child: child,
    );
  }

  static Counter of(BuildContext context) =>
      Provider.of<Counter>(context, listen: false);
}

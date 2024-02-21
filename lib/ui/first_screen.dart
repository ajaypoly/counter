import 'package:counter/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Counter counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title:const Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: ${counter.count}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                counter.increment();
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Go to Screen 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
              child: const Text('Go to Screen 3'),
            ),
          ],
        ),
      ),
    );
  }
}

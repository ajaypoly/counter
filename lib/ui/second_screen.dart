import 'package:counter/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Counter counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title:const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: ${counter.count}'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child:const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
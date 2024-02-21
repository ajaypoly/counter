
import 'package:counter/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Counter counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title:const Text('Third Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: ${counter.count}'),
           const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                counter.reset();
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child:const Text(' Go Back to First Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
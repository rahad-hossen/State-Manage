import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/provider/mainCounter.dart';

class Count_Process extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter ADD/REMOVE"),
        backgroundColor: Colors.redAccent.shade100,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {
                  context.read<Counterprocess>().Increment();
                },
                child: Text("Increment ++")),
            SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  context.read<Counterprocess>().Decrement();
                },
                child: Text("Decrement --")),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int counter = 0;
  //method
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed the button this many times:"),
            Text(counter.toString(), style: TextStyle(fontSize: 40)),
            ElevatedButton(
              onPressed: incrementCounter,
              child: Text("Increment!"),
            ),
          ],
        ),
      ),
    );
  }
}

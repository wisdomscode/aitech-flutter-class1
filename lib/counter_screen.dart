import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int value = 1;
  void increamentCount() {
    setState(() {
      value++;
    });
  }

  void decrementCount() {
    setState(() {
      value--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              increamentCount();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            onPressed: () {
              decrementCount();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Center(
        child: Text(
          "$value",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  // Name of the route for go_router config
  static const String name = 'counter';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Riverpod"),
      ),
      body: const Center(
        child: Text(
          "Valor: 10",
          style: TextStyle(fontSize: 28),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

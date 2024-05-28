import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  // Name of the route for go_router config
  static const String name = 'cards_screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards Screen"),
      ),
      body: const Placeholder(),
    );
  }
}

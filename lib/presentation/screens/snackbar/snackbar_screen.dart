import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    // Clear any existing Snackbars before showing a new one
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text("Hola mundo"),
      action: SnackBarAction(
        label: 'Ok!', // Text for the action button
        onPressed:
            () {}, // Function to execute when the button is pressed (currently empty)
      ),
      duration: const Duration(seconds: 2),
    );
    // Show the Snackbar using ScaffoldMessenger
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  //BuildContext is the info of the app
  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false, // Dialog requires button press to close
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Estás seguro?"),
        content: const Text(
            "Do deserunt veniam mollit enim occaecat laboris exercitation dolor ut duis duis commodo ea ullamco. Dolore mollit mollit fugiat enim incididunt veniam excepteur velit elit deserunt. Quis ullamco duis dolore sunt do irure."),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text("Cancelar"),
          ),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text("Aceptar"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars y Dialogs"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Mostrar Snackbar"),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text(
                        "Nostrud non ipsum culpa duis ullamco occaecat magna. Deserunt et commodo nisi laborum. Consequat pariatur exercitation aliqua aliqua laboris deserunt nulla incididunt voluptate anim velit. Quis in cupidatat eiusmod aliqua eiusmod occaecat tempor culpa nisi nisi voluptate adipisicing. Exercitation eiusmod nulla laborum reprehenderit aute magna velit voluptate excepteur anim ipsum in. Non est ex magna ullamco ut ipsum culpa.")
                  ],
                );
              },
              child: const Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar dialog'),
            ),
          ],
        ),
      ),
    );
  }
}

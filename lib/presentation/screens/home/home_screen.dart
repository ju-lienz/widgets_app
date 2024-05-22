import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

// Internal widget for building the home screen content
class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: appMenuItems.length,
      itemBuilder: (BuildContext context, int index) {
        final menuItem = appMenuItems[index];
        // Return a custom ListTile widget for each menu item
        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

// Custom widget for building a ListTile with menu item data
class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {
    // Access the current theme color scheme from the context
    final theme = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(
        menuItem.icon,
        color: theme.primary,
      ),
      trailing: Icon(
        Icons.arrow_forward,
        color: theme.primary,
      ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ButtonsScreen(),
          ),
        );
      },
    );
  }
}

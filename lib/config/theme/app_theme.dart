import 'package:flutter/material.dart';

/// This list stores all the colors used in the app
const colorList = [
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.pink,
  Colors.orange,
  Colors.pinkAccent,
];

class AppTheme {
  /// The currently selected color index
  final int selectedColor;

  // Constructor with an optional parameter for selectedColor
  // Defaults to the first color (index 0)
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected colores must be greater than 0'),
        assert(selectedColor < colorList.length,
            'Selected colores must be less or equal than ${colorList.length - 1}');

  /// Creates a ThemeData object based on the selected color
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        // Sets the primary color based on the selected color index in the list
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: false, // Configuration of all the appBars
        ),
      );
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

/// Bolean value
final isDarkModeProvider = StateProvider<bool>((ref) => false);

/// List of immutable themes
/// Provider type: `Provider`
final colorListProvider = Provider((ref) => colorList);

/// List of <int> items for selected color on theme
final selectedColorProvider = StateProvider<int>((ref) => 0);

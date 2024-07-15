import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

/// List of immutable themes
/// Provider type: `Provider`
final colorListProvider = Provider((ref) => colorList);

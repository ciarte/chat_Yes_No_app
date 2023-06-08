import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5D2B8F);
const List<Color> _colorThemes = [
  _customColor,
  Color(0xFFE7212B),
  Color(0xFF74FA3F),
  Color(0xFFC9BE5E),
  Color(0xFF043F30)
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            'Colors must be between 0 and ${_colorThemes.length - 1}');
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}

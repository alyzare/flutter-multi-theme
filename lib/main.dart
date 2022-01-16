import 'package:flutter/material.dart';
import 'package:multi_theme_bloc/app.dart';
import 'package:multi_theme_bloc/theme_view_model.dart';

void main() {
  ThemeViewModel.initialize();
  runApp(const App());
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeViewModel extends Cubit<ThemeData> {
  ThemeViewModel._(ThemeData initialState) : super(initialState);

  static late ThemeViewModel _instance;

  static ThemeViewModel get instance => _instance;

  static void initialize({ThemeData? theme}) {
    _instance = ThemeViewModel._(theme ?? ThemeData());
  }

  static void changeTheme(ThemeData theme) {
    _instance.emit(theme);
  }
}

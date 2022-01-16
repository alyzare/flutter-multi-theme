import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_theme_bloc/home.dart';
import 'package:multi_theme_bloc/theme_view_model.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeViewModel, ThemeData>(
      bloc: ThemeViewModel.instance,
      builder: (context, theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: const HomePage(),
        );
      },
    );
  }
}

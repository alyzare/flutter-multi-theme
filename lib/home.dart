import 'package:flutter/material.dart';
import 'package:multi_theme_bloc/theme_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var themeSwitch = false;
  int? radioGroupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multi theme with BLoC"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                blurRadius: 6,
                offset: Offset(5,5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              themeMapList.length,
              (index) => Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio<int>(
                    value: index,
                    groupValue: radioGroupValue,
                    onChanged: (value) {
                      ThemeViewModel.changeTheme(
                          themeMapList[index]['theme'] as ThemeData);
                      setState(() {
                        radioGroupValue = value;
                      });
                    },
                  ),
                  SizedBox(
                      width: 150,
                      child: Text(themeMapList[index]['name'] as String))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

var themeMapList = [
  {
    'name': 'Normal',
    'theme': ThemeData.light(),
  },
  {
    'name': 'Teal',
    'theme': ThemeData(primarySwatch: Colors.teal),
  },
  {
    'name': 'Dark',
    'theme': ThemeData.dark(),
  },
];

import 'package:flutter/material.dart';
import 'package:flut_news/utilities/constants.dart';

class ThemeTestScreen extends StatefulWidget {
  const ThemeTestScreen({super.key});

  @override
  State<ThemeTestScreen> createState() => _ThemeTestScreenState();
}

class _ThemeTestScreenState extends State<ThemeTestScreen> {


  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }
  @override
  Widget build(BuildContext context) {
    final themeData = isDarkMode ? darkTheme : lightTheme;

    return MaterialApp(
      theme: themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Theme Change Example'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: isDarkMode
                    ? AssetImage('assets/dark_background.jpg')
                    : AssetImage('assets/light_background.jpg'),
                fit: BoxFit.fill),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed:
                  toggleTheme,
                  child: Text(isDarkMode
                      ? 'Switch to Light Theme'
                      : 'Switch to Dark Theme'),
                ),
                Text(
                  'Current Theme: ${isDarkMode ? 'Dark' : 'Light'}',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

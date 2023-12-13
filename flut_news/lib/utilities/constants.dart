import 'package:flutter/material.dart';
bool kIsDarkMode = false;

final kLightTheme = ThemeData(
  primarySwatch: Colors.yellow,
);
final kDarkTheme = ThemeData(
  primarySwatch: Colors.teal,
  brightness: Brightness.dark,
);
const TextStyle kTitleTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
const TextStyle kBodyTextStyle = TextStyle(
  fontSize: 14,
);
const TextStyle kReadMoreTextStyle = TextStyle(
  color: Colors.blue,
  fontWeight: FontWeight.bold,
);
const kApiKey = 'dd05d13cf257403d804b6e02775564f6';
const kNewsApiURL = 'https://newsapi.org/v2/top-headlines';


import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: Colors.white,
    primary: Colors.black,
    secondary: Colors.white,
    onPrimary: Colors.grey,
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: Colors.grey,
    primary: Colors.white,
    secondary: Colors.black,
    onPrimary: Color.fromRGBO(33, 33, 33, 1),
  ),
);

const Color defaultBlue = Color.fromARGB(255, 8, 102, 255);



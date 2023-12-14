import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: Color.fromARGB(255, 229, 228, 228),
    primary: Colors.black,
    secondary: Colors.white,
    onPrimary: Colors.grey,
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: Color.fromRGBO(31, 31, 31, 1),
    primary: Colors.white,
    secondary: Colors.black,
    onPrimary: Color.fromRGBO(33, 33, 33, 1),
  ),
);

const Color defaultBlue = Color.fromARGB(255, 8, 102, 255);

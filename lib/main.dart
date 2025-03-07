import 'package:buscarcep/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Buscar CEP",
    theme: ThemeData(
      primaryColor: const Color(0xff00416b),
      colorScheme: const ColorScheme.light(
        primary: Color(0xff00416b),
        secondary: Color(0xfff5ab0c),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff00416b),
        foregroundColor: Colors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xfff5ab0c),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    ),
    home: const HomePage(),
  ));
}

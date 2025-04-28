import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expense.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
  primary: const Color.fromARGB(255, 0, 0, 0),
  secondary: const Color.fromARGB(255, 255, 255, 255),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.primary,
          foregroundColor: kColorScheme.secondary,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
          backgroundColor: kColorScheme.primary,
          foregroundColor: kColorScheme.secondary,
          shape: const StadiumBorder(),
        ),),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge:  TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: kColorScheme.onSecondaryContainer,
          ),
          labelLarge: const TextStyle(
            fontSize: 16,
          ),
          
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const Expenses(),
    ),
  );
}

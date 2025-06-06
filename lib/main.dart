import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expense.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
          backgroundColor: kDarkColorScheme.primaryContainer,
          foregroundColor: kDarkColorScheme.onPrimaryContainer,
          shape: const StadiumBorder(),
        ),),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.primary,
          foregroundColor: kColorScheme.secondary,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
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
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const Expenses(),
    ),
  );
}

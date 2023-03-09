import 'package:flutter/material.dart';

class CustomTheme {
  static const int nightSwatchColor = 0xFFBB501D;

  static Map<String, ThemeData> themes = {
    "Light": ThemeData(
      iconTheme: const IconThemeData(
        color: Colors.black54,
      ),
      primaryColor: Colors.blueGrey,
      scaffoldBackgroundColor: Colors.white,
      dialogBackgroundColor: Colors.white,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white70,
        selectedIconTheme: IconThemeData(color: Colors.black),
        selectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(color: Colors.black54),
        unselectedItemColor: Colors.black54,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      dividerColor: Colors.black54,
      textTheme: const TextTheme(
        displaySmall: TextStyle(color: Colors.black),
        displayMedium: TextStyle(color: Colors.black),
        displayLarge: TextStyle(color: Colors.black),
        headlineSmall: TextStyle(color: Colors.black),
        headlineMedium: TextStyle(color: Colors.black),
        headlineLarge: TextStyle(color: Colors.black),
        titleSmall: TextStyle(color: Colors.black),
        titleMedium: TextStyle(color: Colors.black),
        titleLarge: TextStyle(color: Colors.black),
        bodySmall: TextStyle(color: Colors.black),
        bodyMedium: TextStyle(color: Colors.black),
        bodyLarge: TextStyle(color: Colors.black),
        labelSmall: TextStyle(color: Colors.black),
        labelMedium: TextStyle(color: Colors.black),
        labelLarge: TextStyle(color: Colors.black),
      ),
    ),
    "Read light": ThemeData(
      iconTheme: const IconThemeData(
        color: Colors.black54,
      ),
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      dialogBackgroundColor: Colors.white,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white70,
        selectedIconTheme: IconThemeData(color: Colors.black),
        selectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(color: Colors.black54),
        unselectedItemColor: Colors.black54,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      dividerColor: Colors.black54,
      textTheme: const TextTheme(
        displaySmall: TextStyle(color: Colors.black),
        displayMedium: TextStyle(color: Colors.black),
        displayLarge: TextStyle(color: Colors.black),
        headlineSmall: TextStyle(color: Colors.black),
        headlineMedium: TextStyle(color: Colors.black),
        headlineLarge: TextStyle(color: Colors.black),
        titleSmall: TextStyle(color: Colors.black),
        titleMedium: TextStyle(color: Colors.black),
        titleLarge: TextStyle(color: Colors.black),
        bodySmall: TextStyle(color: Colors.black),
        bodyMedium: TextStyle(color: Colors.black),
        bodyLarge: TextStyle(color: Colors.black),
        labelSmall: TextStyle(color: Colors.black),
        labelMedium: TextStyle(color: Colors.black),
        labelLarge: TextStyle(color: Colors.black),
      ),
    ),
    "Dark": ThemeData(
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      dialogBackgroundColor: Colors.black,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.white),
        selectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(color: Colors.white70),
        unselectedItemColor: Colors.white70,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      dividerColor: Colors.white54,
      textTheme: const TextTheme(
        displaySmall: TextStyle(color: Colors.white70),
        displayMedium: TextStyle(color: Colors.white70),
        displayLarge: TextStyle(color: Colors.white70),
        headlineSmall: TextStyle(color: Colors.white70),
        headlineMedium: TextStyle(color: Colors.white70),
        headlineLarge: TextStyle(color: Colors.white70),
        titleSmall: TextStyle(color: Colors.white70),
        titleMedium: TextStyle(color: Colors.white70),
        titleLarge: TextStyle(color: Colors.white70),
        bodySmall: TextStyle(color: Colors.white70),
        bodyMedium: TextStyle(color: Colors.white70),
        bodyLarge: TextStyle(color: Colors.white70),
        labelSmall: TextStyle(color: Colors.white70),
        labelMedium: TextStyle(color: Colors.white70),
        labelLarge: TextStyle(color: Colors.white70),
      ),
      iconTheme: const IconThemeData(
        color: Colors.white54,
      ),
      dialogTheme: const DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          side: BorderSide(
            color: Colors.white30,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(
          color: Colors.white54,
        ),
        hintStyle: const TextStyle(
          color: Colors.white30,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.white54,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.white54,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
      ),
    ),
    "Night": ThemeData(
      primarySwatch: const MaterialColor(nightSwatchColor, <int, Color>{
        50: Color(nightSwatchColor),
        100: Color(nightSwatchColor),
        200: Color(nightSwatchColor),
        300: Color(nightSwatchColor),
        400: Color(nightSwatchColor),
        500: Color(nightSwatchColor),
        600: Color(nightSwatchColor),
        700: Color(nightSwatchColor),
        800: Color(nightSwatchColor),
        900: Color(nightSwatchColor),
      }),
      primaryColor: const Color(nightSwatchColor),
      scaffoldBackgroundColor: Colors.black,
      dialogBackgroundColor: Colors.black,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.white),
        selectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(color: Colors.white70),
        unselectedItemColor: Colors.white70,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      dividerColor: Colors.white54,
      textTheme: const TextTheme(
        displaySmall: TextStyle(color: Colors.white70),
        displayMedium: TextStyle(color: Colors.white70),
        displayLarge: TextStyle(color: Colors.white70),
        headlineSmall: TextStyle(color: Colors.white70),
        headlineMedium: TextStyle(color: Colors.white70),
        headlineLarge: TextStyle(color: Colors.white70),
        titleSmall: TextStyle(color: Colors.white70),
        titleMedium: TextStyle(color: Colors.white70),
        titleLarge: TextStyle(color: Colors.white70),
        bodySmall: TextStyle(color: Colors.white70),
        bodyMedium: TextStyle(color: Colors.white70),
        bodyLarge: TextStyle(color: Colors.white70),
        labelSmall: TextStyle(color: Colors.white70),
        labelMedium: TextStyle(color: Colors.white70),
        labelLarge: TextStyle(color: Colors.white70),
      ),
      iconTheme: const IconThemeData(
        color: Colors.white54,
      ),
      dialogTheme: const DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          side: BorderSide(
            color: Colors.white30,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(
          color: Colors.white54,
        ),
        hintStyle: const TextStyle(
          color: Colors.white30,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.white54,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
      ),
    ),
    "Read Dark": ThemeData(
      primarySwatch: const MaterialColor(nightSwatchColor, <int, Color>{
        50: Colors.blueGrey,
        100: Colors.blueGrey,
        200: Colors.blueGrey,
        300: Colors.blueGrey,
        400: Colors.blueGrey,
        500: Colors.blueGrey,
        600: Colors.blueGrey,
        700: Colors.blueGrey,
        800: Colors.blueGrey,
        900: Colors.blueGrey,
      }),
      primaryColor: Colors.blueGrey,
      scaffoldBackgroundColor: Colors.black,
      dialogBackgroundColor: Colors.black,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.white),
        selectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(color: Colors.white70),
        unselectedItemColor: Colors.white70,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      dividerColor: Colors.white54,
      textTheme: const TextTheme(
        displaySmall: TextStyle(color: Colors.white70),
        displayMedium: TextStyle(color: Colors.white70),
        displayLarge: TextStyle(color: Colors.white70),
        headlineSmall: TextStyle(color: Colors.white70),
        headlineMedium: TextStyle(color: Colors.white70),
        headlineLarge: TextStyle(color: Colors.white70),
        titleSmall: TextStyle(color: Colors.white70),
        titleMedium: TextStyle(color: Colors.white70),
        titleLarge: TextStyle(color: Colors.white70),
        bodySmall: TextStyle(color: Colors.white70),
        bodyMedium: TextStyle(color: Colors.white70),
        bodyLarge: TextStyle(color: Colors.white70),
        labelSmall: TextStyle(color: Colors.white70),
        labelMedium: TextStyle(color: Colors.white70),
        labelLarge: TextStyle(color: Colors.white70),
      ),
      iconTheme: const IconThemeData(
        color: Colors.white54,
      ),
      dialogTheme: const DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          side: BorderSide(
            color: Colors.white30,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(
          color: Colors.white54,
        ),
        hintStyle: const TextStyle(
          color: Colors.white30,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.white54,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
      ),
    ),
  };
}

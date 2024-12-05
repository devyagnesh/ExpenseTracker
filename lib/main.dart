import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var kColorSchema = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((fn) {
    runApp(MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
      ),
      theme: ThemeData().copyWith(
          colorScheme: kColorSchema,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorSchema.onPrimaryContainer,
            foregroundColor: kColorSchema.primaryContainer,
          ),
          cardTheme: const CardTheme().copyWith(
              color: kColorSchema.secondaryContainer,
              margin: const EdgeInsets.all(16)),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: kColorSchema.onSecondaryContainer,
                  fontSize: 16,
                ),
              )),
      themeMode: ThemeMode.system,
      home: const Expenses(),
    ));
  });
}

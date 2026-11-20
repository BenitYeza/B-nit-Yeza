import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const CvFlutterApp());
}

class CvFlutterApp extends StatelessWidget {
  const CvFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon CV',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4F7FB),

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 248, 158, 56),
          primary: const Color.fromARGB(255, 50, 35, 16),
          secondary: const Color.fromARGB(255, 248, 158, 56),
        ),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 50, 35, 16),
          foregroundColor: Colors.white,
          centerTitle: false,
          elevation: 0,
        ),

        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(
              color: Color(0xFFE8EDF4),
            ),
          ),
        ),
      ),

      home: const LoginScreen(),
    );
  }
}
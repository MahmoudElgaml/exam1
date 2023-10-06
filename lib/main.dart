import 'package:exam1/home_screen.dart';
import 'package:exam1/screen_1.dart';
import 'package:exam1/screen_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400
          ),
          bodyLarge: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold

          )
        )
      ),
      debugShowCheckedModeBanner: false,
      initialRoute:
          Screen1.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        Screen1.routeName: (context) => Screen1(),
        Screen2.routeName: (context) => Screen2(),
      },
    );
  }
}

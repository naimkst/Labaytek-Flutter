import 'package:flutter/material.dart';
import 'package:labaytek/pages/country_list.dart';
import 'package:labaytek/pages/start.dart';
import 'helpers/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFFFAA419, {
          50: Color(0xFFFAA419),
          100: Color(0xFFFAA419),
          200: Color(0xFFFAA419),
          300: Color(0xFFFAA419),
          400: Color(0xFFFAA419),
          500: Color(0xFFFAA419),
          600: Color(0xFFFAA419),
          700: Color(0xFFFAA419),
          800: Color(0xFFFAA419),
          900: Color(0xFFFAA419),
        }),
      ),
      home: const StartPage(),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String countryName;
  const HomePage({Key? key, required this.countryName}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.countryName),
      ),
      body: Center(
        child: Text(widget.countryName),
      ),
    );
  }
}

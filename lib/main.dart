import 'package:flutter/material.dart';

import 'screens/auth_screen.dart';

void main() {
  runApp(const MySocialApp());
}

class MySocialApp extends StatelessWidget {
  const MySocialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AuthScreen(),
    );
  }
}

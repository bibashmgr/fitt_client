import 'package:flutter/material.dart';

// screens
import 'package:fitt_client/screens/home_screen/home.dart';
import 'package:fitt_client/screens/starting_screen/starting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitt',
      initialRoute: '/',
      routes: {
        '/': (context) => const Starting(),
        '/home': (context) => const Home(),
      },
    );
  }
}

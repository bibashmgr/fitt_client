import 'package:flutter/material.dart';

// screens
import 'package:fitt_client/screens/starting_screen/starting.dart';
import 'package:fitt_client/screens/finish_screen/finish.dart';
import 'package:fitt_client/screens/home_screen/home.dart';

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
        '/finish': (context) => const Finish(),
        '/home': (context) => const Home(),
      },
    );
  }
}

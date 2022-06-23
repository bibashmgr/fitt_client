import 'package:flutter/material.dart';

// constants
import 'package:fitt_client/constants/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kLightColor,
      ),
      home: const Scaffold(
        body: Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}

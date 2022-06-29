import 'package:flutter/material.dart';

// constants
import 'package:fitt_client/constants/colors.dart';

class Finish extends StatelessWidget {
  const Finish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kLightColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Scaffold(
        body: Center(
          child: Text('Get my Plan'),
        ),
      ),
    );
  }
}

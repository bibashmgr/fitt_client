import 'package:flutter/material.dart';

// constants
import 'package:fitt_client/constants/colors.dart';

// components
import 'package:fitt_client/screens/starting_screen/components/loading.dart';
import 'package:fitt_client/screens/starting_screen/components/intro.dart';
import 'package:fitt_client/screens/starting_screen/components/info.dart';
import 'package:fitt_client/screens/starting_screen/components/level.dart';

class Starting extends StatelessWidget {
  const Starting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(
      initialPage: 0,
    );
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: kLightColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          body: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              Loading(
                pageController: pageController,
              ),
              Intro(
                pageController: pageController,
              ),
              Info(
                pageController: pageController,
              ),
              Level(
                pageController: pageController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

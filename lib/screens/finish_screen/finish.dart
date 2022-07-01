import 'package:flutter/material.dart';

// constants
import 'package:fitt_client/constants/colors.dart';

// screens
import 'package:fitt_client/screens/starting_screen/starting.dart';
import 'package:fitt_client/screens/home_screen/home.dart';

class Finish extends StatelessWidget {
  const Finish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: kPrimaryColor,
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(40, 40),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Starting()),
                    );
                  },
                  child: const Icon(
                    Icons.restart_alt_rounded,
                    color: kLightColor,
                  ),
                ),
                const SizedBox(
                  height: 250.0,
                ),
                const Text(
                  'Bibash Thapa Magar, your workout plan is ready',
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: kDarkColor,
                  ),
                ),
                const SizedBox(
                  height: 170.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        primary: kPrimaryColor,
                        minimumSize: const Size(300, 50),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Get My Plan",
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

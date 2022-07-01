import 'package:flutter/material.dart';

// constants
import 'package:fitt_client/constants/colors.dart';

// componets
import 'package:fitt_client/components/custom_checkbox.dart';

// screens
import 'package:fitt_client/screens/finish_screen/finish.dart';

class Goal extends StatelessWidget {
  const Goal({Key? key, required this.pageController}) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(25.0),
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
                  pageController.animateToPage(
                    3,
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeIn,
                  );
                },
                child: const Icon(
                  Icons.arrow_back_rounded,
                  color: kLightColor,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const CustomCheckbox(
                labelName: "What’s your end goal that you want to achieve ? ",
                values: ['Gain Weight', 'Maintain Health', 'Loss Weight'],
                images: [
                  'assets/images/starting/gain_weight.png',
                  'assets/images/starting/maintain_health.png',
                  'assets/images/starting/loss_weight.png',
                ],
              ),
              const SizedBox(
                height: 105,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Finish()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      primary: kPrimaryColor,
                      minimumSize: const Size(150, 50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Finish',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

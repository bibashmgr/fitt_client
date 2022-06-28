import 'package:flutter/material.dart';

// constants
import 'package:fitt_client/constants/colors.dart';

// componets
import 'package:fitt_client/components/custom_checkbox.dart';

class Level extends StatelessWidget {
  const Level({Key? key, required this.pageController}) : super(key: key);

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
                    2,
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
                labelName:
                    "What’s your experience level on using workout equipments ?",
                values: ['Beginner', 'Intermediate', 'Expert'],
                images: [
                  'assets/images/starting/beginner.png',
                  'assets/images/starting/intermediate.png',
                  'assets/images/starting/expert.png',
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
                      pageController.animateToPage(4,
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.easeIn);
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
                      'Next',
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

import 'package:flutter/material.dart';

// constants
import 'package:fitt_client/constants/colors.dart';

// components
import 'package:fitt_client/components/custom_text_field.dart';

class Info extends StatelessWidget {
  final PageController pageController;

  const Info({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(25.0),
      child: SingleChildScrollView(
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
                      1,
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
                Column(
                  children: <Widget>[
                    const CustomTextField(labelName: 'Full Name'),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        SizedBox(
                          width: 160,
                          child: CustomTextField(labelName: 'Age'),
                        ),
                        SizedBox(
                          width: 160,
                          child: CustomTextField(labelName: 'Gender'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        SizedBox(
                          width: 160,
                          child: CustomTextField(labelName: 'Weight'),
                        ),
                        SizedBox(
                          width: 160,
                          child: CustomTextField(labelName: 'Height'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            pageController.animateToPage(3,
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

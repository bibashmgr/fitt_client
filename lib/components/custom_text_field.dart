import 'package:flutter/material.dart';

// constants
import 'package:fitt_client/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final String labelName;

  const CustomTextField({Key? key, required this.labelName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          labelName,
          style: const TextStyle(
            fontFamily: 'Outfit',
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          cursorColor: kDarkColor,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: kDarkColor, width: 1.0),
              borderRadius: BorderRadius.circular(50.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: kDarkColor, width: 1.0),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ),
      ],
    );
  }
}

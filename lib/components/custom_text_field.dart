import 'package:flutter/material.dart';

// constants
import 'package:fitt_client/constants/colors.dart';

class CustomTextField extends StatefulWidget {
  final String labelName;

  const CustomTextField({Key? key, required this.labelName}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '${widget.labelName} ',
          style: const TextStyle(
            fontFamily: 'Outfit',
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
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

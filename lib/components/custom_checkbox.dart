import 'package:flutter/material.dart';

// constants
import 'package:fitt_client/constants/colors.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox(
      {Key? key,
      required this.labelName,
      required this.values,
      required this.images})
      : super(key: key);

  final String labelName;
  final List values;
  final List images;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  List<bool> isChecked = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          "${widget.labelName}",
          style: const TextStyle(
            fontFamily: 'Outfit',
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: kDarkColor,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: SizedBox(
            height: 75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CheckboxListTile(
                  value: isChecked[0],
                  onChanged: (newIsChecked) {
                    setState(() {
                      isChecked[0] = !isChecked[0];
                      isChecked[1] = false;
                      isChecked[2] = false;
                    });
                  },
                  activeColor: kPrimaryColor,
                  checkColor: kLightColor,
                  title: Text(
                    "${widget.values[0]}",
                    style: const TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  secondary: Image(
                    image: AssetImage("${widget.images[0]}"),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: kDarkColor,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: SizedBox(
            height: 75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CheckboxListTile(
                  value: isChecked[1],
                  onChanged: (newIsChecked) {
                    setState(() {
                      isChecked[0] = false;
                      isChecked[1] = !isChecked[1];
                      isChecked[2] = false;
                    });
                  },
                  activeColor: kPrimaryColor,
                  checkColor: kLightColor,
                  title: Text(
                    "${widget.values[1]}",
                    style: const TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  secondary: Image(
                    image: AssetImage("${widget.images[1]}"),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: kDarkColor,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: SizedBox(
            height: 75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CheckboxListTile(
                  value: isChecked[2],
                  onChanged: (newIsChecked) {
                    setState(() {
                      isChecked[0] = false;
                      isChecked[1] = false;
                      isChecked[2] = !isChecked[2];
                    });
                  },
                  activeColor: kPrimaryColor,
                  checkColor: kLightColor,
                  title: Text(
                    "${widget.values[2]}",
                    style: const TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  secondary: Image(
                    image: AssetImage("${widget.images[2]}"),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

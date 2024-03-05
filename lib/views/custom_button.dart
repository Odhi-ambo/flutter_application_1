import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/views/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color buttonColor;
  final VoidCallback? action;

  const CustomButton({
    required this.label,
    this.buttonColor = primaryColor,
    this.action,
    Key? key, required Null Function() onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: action,
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            shape: const StadiumBorder(side: BorderSide.none),
          ),
          child: CustomText(
            label: label,
            labelColor: appWhiteColor,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
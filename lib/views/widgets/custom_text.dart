import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';


class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.label,
    this.labelColor = appBlackColor,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.bold,
  }) : super(key: key);

  final String label;
  final Color labelColor;
  final dynamic fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: labelColor,
      ),
    );
  }
}

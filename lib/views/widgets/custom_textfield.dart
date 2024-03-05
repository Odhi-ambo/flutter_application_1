import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/logincontroller.dart';
import 'package:get/get.dart';

LoginController loginController = Get.put(LoginController());

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintMessage;
  final bool hideText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool isPassword;
  final TextStyle hintStyle;

  const CustomTextField({
    Key? key,
    required this.controller,
    this.hintMessage,
    this.suffixIcon,
    this.prefixIcon,
    this.hideText = false,
    this.isPassword = false,
    this.hintStyle = const TextStyle(color: Colors.white),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => TextField(
          controller: controller,
          obscureText: loginController.isHidden.value,
          decoration: InputDecoration(
            labelText: hintMessage, // Added label
            hintText: hintMessage, // Added hint
            border: OutlineInputBorder(),
            prefixIcon: Icon(prefixIcon), // Use the provided prefixIcon
            suffixIcon: GestureDetector(
              child: Icon(loginController.isHidden.value
                  ? Icons.visibility_off
                  : Icons.visibility),
              onTap: () => loginController.toggleHide(),
            ),
          ),
        ));
  }
}

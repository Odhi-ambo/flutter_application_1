import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/views/widgets/custom_text.dart';
import 'package:flutter_application_1/views/widgets/custom_textfield.dart';
import 'package:flutter_application_1/views/widgets/custom_button.dart';
import 'package:get/get.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
        backgroundColor: Colors.blue,
        foregroundColor: appBlackColor,
        centerTitle: true,
        actions: const [
          Icon(Icons.refresh),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,            
            children: [
              const CustomText(
                label: 'Create an Account',
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              const CustomText(
                label: "Full Name",
              ),
              CustomTextField(controller: TextEditingController(), hintMessage: "Enter your full name"),
              const CustomText(
                label: "Email Address",
              ),
              CustomTextField(controller: TextEditingController(), hintMessage: "Enter your email address"),
              const CustomText(
                label: "Password",
              ),
              CustomTextField(controller: TextEditingController(), hintMessage: "Enter your password", hideText: true),
              const SizedBox(height: 20),
              CustomButton(label: "Register", action: () => Get.toNamed("/login"),
              buttonColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/views/widgets/custom_text.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.blue,
        foregroundColor: appWhiteColor,
        centerTitle: true,
        actions: const [
          Icon(Icons.refresh),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              label: 'Welcome to the Dashboard!',
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            // Add widgets
          ],
        ),
      ),
    );
  }
}
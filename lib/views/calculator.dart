import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/controllers/calculatorcontroller.dart';
import 'package:flutter_application_1/views/widgets/custom_text.dart';
import 'package:flutter_application_1/views/widgets/custom_textfield.dart';
import 'package:get/get.dart';

/*class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}*///to be deleted

// ignore: must_be_immutable
class Calculator extends StatelessWidget {
  TextEditingController aController = TextEditingController();
  TextEditingController bController = TextEditingController();
  CalculatorController calculatorController = Get.put(CalculatorController());

  Calculator({super.key});
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body:Column(
        children: [
      const CustomText(
        label:"Enter A"),
      CustomTextField(controller:aController, 
    ),
     const SizedBox(height: 10,),

      
      const CustomText(
        label:"Enter B"),
      CustomTextField(controller:bController,),
      
      const SizedBox(
        height:10,
      ),
MaterialButton(
  onPressed:(){
    double a = double.parse(aController.text);
    double b = double.parse(bController.text);
   
      double s = a + b;
      calculatorController.updateSum(s);
      calculatorController.updateA(a);
      calculatorController.updateB(b);
    
    
  },
  height:50,
color: primaryColor,
child:const Text("Calculate"),
),
const SizedBox(
  height: 30,
  ),
Obx(() =>  CustomText(label: "The Sum Of:${calculatorController.A.value} & ${calculatorController.B.value} is ${calculatorController.sum.value}")),
    ],
    )
    );
  }
}
import 'package:get/get.dart';

class CalculatorController extends GetxController{
  var sum = 0.0.obs;
  var A = 0.0.obs;
  var B = 0.0.obs;
  
  updateA(newA){
    A.value = newA;
  }
  updateB(newB){
    B.value = newB;
  }
  updateSum(newSum){
sum.value = newSum;
  }

}
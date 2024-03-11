import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/controllers/home_controller.dart';
import 'package:flutter_application_1/views/calculator.dart';
import 'package:flutter_application_1/views/screens/dashboard.dart';
import 'package:flutter_application_1/views/screens/registration.dart';
import 'package:get/get.dart';


HomeController homeController = Get.put(HomeController());
var screens = [
const Dashboard(),
 Calculator(),
 Calculator(), 
const Registration()

];



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: appWhiteColor,
        color: Colors.blue,
        items:const[
        Icon(Icons.house),
        Icon(Icons.list),
        Icon(Icons.person),
        Icon(Icons.settings),
      ],
      onTap: (index){
        homeController.updateSelectedPage(index);
        //print
        ("Clicked on tab $index");
        
      },
      ),
      body: Obx(() => Center(child: screens[homeController.selectedPage.value])),
    );
  }
}
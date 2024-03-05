import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/custom_text.dart';
import 'package:flutter_application_1/views/custom_textfield.dart';
import 'package:flutter_application_1/views/dashboard.dart';

class Login extends StatelessWidget{
  const Login ({super.key});

  @override
  Widget build(context) {

  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  
    return Scaffold(      
      appBar: AppBar(
        title: const Text('DU APPLICATION',style: TextStyle(color: Colors.black,fontSize: 30.0),),
        backgroundColor: Colors.blue,        
        centerTitle: true,
        actions: const [
          Icon(Icons.refresh,color: Colors.black,),
        ], 
      ),
      body: Padding(
        
        padding: const EdgeInsets.all(70.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
          Image.asset('assets/images/logo.jpg'),
              
           const SizedBox(height: 50),
              
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  label: "Login Screen",
                  
                ),
              ],
            ),
            const SizedBox(height: 20),
             const CustomText(
              label: "username",
            ),
             CustomTextField(controller: usernameController, 
             hintMessage: 'User name' ,prefixIcon: Icons.person_2_outlined, ), 
             const  CustomText(
              label: "password",
            ),
             CustomTextField(controller: passwordController,
             hintMessage: 'password', prefixIcon: Icons.lock_clock ,
              
             ),
             const SizedBox(height: 10,),
             const Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                  CustomText(label: 'forgot password?',),
               ],
             ),
             const SizedBox(height: 10,),
             // Button
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:  const EdgeInsets.all(16.0),
                  child: ElevatedButton(  
                                      
                    onPressed: () {
                      // Action to be performed when the button is pressed
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Dashboard()));
                      
                      print('Button Pressed!');
                      // You can add any functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text('Login',style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
           const CustomText(label: "Don't have an account? Sign up"),
              
          ]),
        ),
      ),
    );
  }
}
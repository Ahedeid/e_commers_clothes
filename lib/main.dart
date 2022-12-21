
import 'package:codes/screens/launch_screens/launch_screen.dart';
import 'package:codes/screens/login_screens/login_Screen/Login_screen.dart';
import 'package:codes/screens/login_screens/signup_screen/signup_screen.dart';
import 'package:flutter/material.dart';

void main()=>runApp(const ClothesECommerce());

class ClothesECommerce extends StatelessWidget {
  const ClothesECommerce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:'launch_screen',
      routes: {
        'launch_screen': (context)=> const LaunchScreen(),
        'login_screen': (context)=> const LogInScreen(),
        'signup_screen': (context)=> const SignUpScreen(),
      },

    );
  }
}

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'shopping.dart';
import 'package:flutter/cupertino.dart';
import 'package:animator/animator.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Mainscreen extends StatelessWidget{
  const Mainscreen({Key? key}) : super(key: key);


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          AnimatedSplashScreen(
            splash: Icons.home ,
            
            nextScreen:shopping(),
            splashTransition: SplashTransition.scaleTransition,
             backgroundColor: Colors.white,
          ),
          backgroundColor: Colors.indigo,
    );
        
  }


}
 
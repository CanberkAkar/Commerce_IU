import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animator/animator.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:commerce/screeens/productList.dart';
import 'package:commerce/utilities/routes.dart';
class shopping extends StatelessWidget{

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          children: <Widget>[
            
            Padding(padding: EdgeInsets.all(50)),
                              SizedBox(
                      width: 200.0,
                      child: TextLiquidFill(
                        text: ' WELCOME',
                        waveColor: Colors.lightBlueAccent,
                        boxBackgroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 38.0,
                          fontWeight: FontWeight.bold,
                        ),
                        boxHeight: 300.0,
                      ),
                    ),
                 Padding(padding: EdgeInsets.all(50)),
              ElevatedButton(
                onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductList()));
                }, 
                child: Row(
                  mainAxisSize:MainAxisSize.min,
                  children: [
                  Text("Shop"),
                  Icon(Icons.shopping_bag),
                ],),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlueAccent,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    textStyle: TextStyle(

                    )
                  ),
                  
                ),
                
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }


}
 
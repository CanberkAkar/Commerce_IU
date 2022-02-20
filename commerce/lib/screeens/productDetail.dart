import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main()=> runApp(Detail()) ;

class Detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
       body: Body(),
     ),
    );
  }
}

class Body extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _Body();
    
  
}

class _Body extends State<Body>
{

List<String> imageList=[
  "https://img-lcwaikiki.mncdn.com/mnresize/1200/-/productimages/20192/2/3588679/v1/l_20192-9w2994z8-gc3_a.jpg",
  "https://img-lcwaikiki.mncdn.com/mnresize/1200/-/productimages/20192/2/3588679/v1/l_20192-9w2994z8-gc3_a.jpg",
  "https://img-lcwaikiki.mncdn.com/mnresize/1200/-/productimages/20192/2/3588679/v1/l_20192-9w2994z8-gc3_a.jpg",
];


  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: <Widget>[
      
      Padding(padding: EdgeInsets.all(21)),
      
        Padding(padding: EdgeInsets.all(62)),
        SizedBox(height: 10),
        CarouselSlider(items: imageList.map((e) => ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(e,
              height:800,
              width: 600,
              fit: BoxFit.cover,),
               Padding(padding: EdgeInsets.all(10)),
            ],
          ),
        )).toList(), options: CarouselOptions(
          autoPlay: true,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          
          height: 150
        )),

       Align(
         alignment: Alignment.bottomCenter,
          child:Container
          (
            
            height:MediaQuery.of(context).size.height *.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40)

              ),
              boxShadow: [
                
                BoxShadow(
                  color: Colors.black.withOpacity(.2),
                  offset: Offset(0, -4),
                  blurRadius: 8
                ),
              ],
              
            ),
            child: Column(
              children: [
                
                Padding(padding: const EdgeInsets.only(
                  top: 20,
                  left:20,
                  right: 20
                ),
                child: Row(
                children: [
                  Expanded(
                    child: 
                   Text("SWEATER",
                style:TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),), 
                ),
                
                ],),),
                Padding(padding: const EdgeInsets.only(
                  top:20,
                  left:30,
                  right:30
                ),
                child: Row(
                  children: [
                    Text("WOMEN SWEATER",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                ),
                Padding(padding: const EdgeInsets.only(
                  top:15,
                  left: 30,
                  right: 30,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(63, 200, 101, 1),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text("Stock"
                  ,style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),

                ),
                ),
                Expanded(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,width: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(228, 228, 228, 1),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text("-",
                          style:TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ) ,),
                        ),
                      ),
                      Container(
                         height: 50,
                         width: 100,
                         child: Center(
                           child: Text("1",
                           style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold
                           ),),
                         ), 
                      ),
                       Container(
                        height: 50,width: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(228, 228, 228, 1),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text("+",
                          style:TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ) ,),
                        ),
                      )
                    ],) ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight:Radius.circular(20)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color:Colors.black.withOpacity(.08),
                      offset: Offset(0, -3),
                      blurRadius:12
                    )
                  ]
                ),
                child: Row(children: [
                  Expanded(child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total Price',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.blueGrey
                          ),),
                          Text("\$150",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                          )
                    ],
                  ) ,
                  ),
            InkWell(
                  onTap: (){
                    
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical:10,horizontal: 20),
                    decoration: BoxDecoration(
                      color:Color.fromRGBO(243, 175, 45, 1),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text('Add to Cart',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),),
                  ),
                ),
                ],),
              ) , 
                
              ],
            ),
       ) ,
       ),
      ],
      
    );
  }
}
  

import 'package:flutter/material.dart';

class BottomUi extends StatelessWidget {
  const BottomUi({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return  Container(
      child: Stack(
        children: [
          // Positioned(
          //   top: 0,
          //   left: 4,
          //   child: Container(
          //     height:size.height *0.12,
          //     width:size.width*0.35,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.only(
          //           topRight: Radius.circular(200),
          //           bottomLeft: Radius.circular(250),
          //
          //         ),
          //
          //         boxShadow: [
          //           BoxShadow(color:Colors.green[900],
          //             blurRadius: 30,
          //           ),
          //         ],
          //
          //
          //         color:Colors.lightGreen
          //
          //
          //     ),
          //   ),
          // ),
          //
          // Positioned(
          //   top:0,
          //   left: 0,
          //   child: Container(
          //     height:size.height*0.18,
          //     width: size.width*0.19,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.only(
          //         topRight: Radius.circular(350),
          //         bottomLeft: Radius.circular(350),
          //
          //       ),
          //
          //       boxShadow: [
          //         BoxShadow(color:Colors.green[900],
          //           blurRadius: 20,),
          //       ],
          //
          //       color:Colors.yellow[700],
          //
          //
          //     ),
          //   ),
          // ),


          Positioned(
            bottom: 0,
            right: 4,
            child: Container(
              height:size.height *0.12,
              width:size.width*0.35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    //topLeft: Radius.circular(400),
                    bottomRight: Radius.circular(200),

                  ),

                  boxShadow: [
                    BoxShadow(color:Colors.green[900],
                      blurRadius: 30,
                    ),
                  ],


                  color:Colors.lightGreen


              ),
            ),
          ),
          Positioned(
            bottom:0,
            right: 0,
            child: Container(
              height:size.height*0.18,
              width: size.width*0.19,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  //topLeft: Radius.circular(300),
                    bottomLeft: Radius.circular(300),
                    topRight: Radius.circular(200)

                ),

                boxShadow: [
                  BoxShadow(color:Colors.green[900],
                    blurRadius: 20,),
                ],

                color:Colors.yellow[700],


              ),
            ),
          ),

        ],
      ),

    );
  }
}

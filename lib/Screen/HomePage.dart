import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saveboxcon_app/Screen/Bottom_ui.dart';
import 'package:saveboxcon_app/Screen/top_bottom_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String phone = "", password = "" ,countryCode ="91";
    bool progress = false;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:Container(
        child: Column(
          children: [
            Expanded(child: TopBottom()),
            Center(
              child: Text(
                "LOGIN",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    color: Colors.green[900],
                    fontSize: 30),
              ),
            ),
            Expanded(child:BottomUi()),
           Padding(padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),

           child: Column(
             children: [
               SizedBox(
                 height: 70,
               ),
               Center(
                 child: Text(
                   "Login with your Phone Number and Password",
                   style: TextStyle(color: Colors.grey),
                 ),
               ),
               SizedBox(
                 height: 20,
               ),
               TextField(
                 style:TextStyle(color: Colors.black) ,
                 cursorColor: Colors.black,
                 inputFormatters: [
                   LengthLimitingTextInputFormatter(10),
                 ],
                 keyboardType: TextInputType.phone,
                 decoration: InputDecoration(
                   hintText: "Phone Number",
                   prefixIcon: Icon(Icons.phone_iphone,
                     color: Colors.green[900],),
                   hintStyle: TextStyle(color: Colors.grey,
                       fontSize: 14),
                   // enabledBorder: const OutlineInputBorder(
                   //   borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                   //  
                   // ),
                   // focusedBorder: const OutlineInputBorder(
                   //   borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                   // ),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30)
                   )
                 ),
               ),
               SizedBox(
                 height: 25,
               ),
               TextField(
                 style: TextStyle(color: Colors.black),
                 cursorColor: Colors.black,
                 onChanged: (String value) {
                   password = value;
                 },
                 obscureText: true,
                 decoration: InputDecoration(
                   hintText: "Password",
                   // enabledBorder: const OutlineInputBorder(
                   //   borderSide:
                   //   const BorderSide(color: Colors.grey, width: 1.0),
                   // ),
                   // focusedBorder: const OutlineInputBorder(
                   //   borderSide:
                   //   const BorderSide(color: Colors.grey, width: 1.0),
                   // ),
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30)
                     ),
                   hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                   prefixIcon: Icon(
                     Icons.lock_open,
                     color: Colors.green[900],
                   ),
                 ),
               ),
               SizedBox(
                 height: 15,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   InkWell(
                     onTap: (){
                       Navigator.pushNamed(context, "/forgot-password");
                     },
                     child:  Text("Forgot Password ?",
                         style: TextStyle(
                           color: Colors.black,
                         ),
                         textAlign: TextAlign.right),
                   )
                 ],
               ),

               SizedBox(
                 height: 25,
               ),
               !progress
                   ? SizedBox(
                 width: double.infinity,
                 height: 50,
                 child: ElevatedButton(
                   style:ElevatedButton.styleFrom(
                     primary:Colors.green[900],
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.all(Radius.circular(30))
                     ),
                   ) ,
                   child: Text(
                     "SIGN IN",
                     style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         letterSpacing: 2),
                   ),

                   onPressed: () {
                     //Navigator.push(context, MaterialPageRoute(builder: (context)=>EntryScreen()));
                   },
                 ),
               )
                   : Center(child: CircularProgressIndicator()),
               SizedBox(
                 height: 40,
               ),

             ],
           ),),


          ],
        ),
      )
    );
  }
}



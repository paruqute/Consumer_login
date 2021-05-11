import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saveboxcon_app/Screen/Bottom_ui.dart';
import 'package:saveboxcon_app/Screen/HomePage.dart';
import 'package:saveboxcon_app/Screen/top_bottom_ui.dart';
import 'package:saveboxcon_app/components/Divider_line.dart';
class SignUp extends StatelessWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(child: TopBottom(),),

            Positioned.fill(
              bottom: 0,
              child: BottomUi(),),
            Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30,right: 30,top: 70),
                    child: SingleChildScrollView(
                      child: Column(

                        children: [
                         // SizedBox(height: 35,),
                          Center(
                            child: Text(
                              "Sign Up",
                              // style: TextStyle(
                              //     fontWeight: FontWeight.bold,
                              //     letterSpacing: 1.5,
                              //     color: Colors.green[900],
                              //     fontSize: 30),
                              style: GoogleFonts.andada(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green[900],
                                  fontSize: 30,
                                  letterSpacing: 10
                              ),
                            ),
                          ),
                          SizedBox(height: 25,),

                          TextField(
                            style: TextStyle(color: Colors.black),
                            cursorColor: Colors.black,
                            onChanged: (String value) {

                            },

                            decoration: InputDecoration(
                              hintText: "Username",
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
                                Icons.person_outline,
                                color: Colors.green[900],
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
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
                            height: 20,
                          ),

                          TextField(
                            style: TextStyle(color: Colors.black),
                            cursorColor: Colors.black,
                            onChanged: (String value) {

                            },

                            decoration: InputDecoration(
                              hintText: "Email Id",
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
                                Icons.mail_outline,
                                color: Colors.green[900],
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          TextField(
                            style: TextStyle(color: Colors.black),
                            cursorColor: Colors.black,
                            onChanged: (String value) {

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
                            height: 20,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.black),
                            cursorColor: Colors.black,
                            onChanged: (String value) {

                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Confirm Password",
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
                                Icons.lock_outline,
                                color: Colors.green[900],
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 25,
                          ),
                          SizedBox(
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
                                "SIGN UP",
                                // style: TextStyle(
                                //     color: Colors.white,
                                //     fontWeight: FontWeight.bold,
                                //     letterSpacing: 2),
                                style: GoogleFonts.nunito(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2
                                ),
                              ),

                              onPressed: () {
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>EntryScreen()));
                              },
                            ),
                          ),
                          DividerLine(text: "Already have an account?",
                            sign: "Login",
                            press: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},)

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),


            // Positioned(
            //     bottom: 0,
            //     child: ),

          ],
        ),
      ),


    );
  }
}

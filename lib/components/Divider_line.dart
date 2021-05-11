import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saveboxcon_app/Screen/SIgnUp.dart';
class DividerLine extends StatelessWidget {
  const DividerLine({
    Key key,
    this.text,
    this.sign,
    this.press,
  }) : super(key: key);
final String text;
final String sign;
final Function press;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20,left: 20,),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                ),
                Text('or'),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              GestureDetector(
                onTap: () {

                },
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("assets/google.jpg"),
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("assets/facebook.jpg"),
              ),
            ],
          ),
        ),
        SizedBox(height: 5,),
        InkWell(
          onTap: press,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 1),
            padding: EdgeInsets.only(bottom: 10),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  text,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  sign,
                  style: GoogleFonts.itim(
                      color: Colors.green[900],
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

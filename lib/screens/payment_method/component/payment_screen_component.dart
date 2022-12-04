import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableListTile extends StatelessWidget {
  var image;
  var num;
  var radio;
  ReusableListTile({Key? key,
    this.image,
    this.num,
    this.radio
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   ListTile(
      title: Row(
        children: [
          Image.asset(
            image,
            height: 35,
            width: 45,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            num,
            style: GoogleFonts.mulish(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Colors.black),
          ),
        ],
      ),
      trailing: radio,
    );
  }
}
import 'package:bathing_app/constant/colors.dart';
import 'package:bathing_app/constant/images.dart';
import 'package:bathing_app/screens/auth/signup/screen/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../reusable_widget/custom_button.dart';
import '../../../../reusable_widget/reusable_textformfield.dart';
import '../../location/screen/location_screen.dart';
class DobScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xffFFD4FF),
              const Color(0xffBDCFFF),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios,size: 20,),
                    Text("Status",style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: ConstantColors.primary
                    ),),
                    Text(""),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                Text("Status",style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: ConstantColors.primary
                ),),
                SizedBox(
                  height: 15,
                ),
                kCustomeTextField(
                  sufxicon: Icon(Icons.keyboard_arrow_down_sharp),
                  hintText: "Select",
                ),
                SizedBox(
                  height: 35,
                ),
                Text("Date of Birth",style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: ConstantColors.primary
                ),),
                SizedBox(
                  height: 15,
                ),
                kCustomeTextField(
                  sufxicon: Icon(Icons.calendar_today_outlined),
                  hintText: "01st, October, 2022",
                ),
                SizedBox(
                  height: 37,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                      buttonFunction: () {
                        Get.to(()=>LocationScreen());
                      },
                      textString: "Next",
                      buttonColor: ConstantColors.primary,
                      buttonHeight: 32,
                      buttonWidth: 100,
                      textColor: Colors.white,
                      textSize: 15,
                      textWeight: FontWeight.w700,
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

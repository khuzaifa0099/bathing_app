import 'package:bathing_app/constant/colors.dart';
import 'package:bathing_app/screens/auth/login/screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import '../../../../reusable_widget/custom_button.dart';
import '../../../reusable_widget/navigation_bar.dart';
import '../../home/screen/home_screen.dart';

class GuidLineScreen extends StatelessWidget {
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
                    Text("Guidlines",style: GoogleFonts.mulish(
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
                Text("Hi! Emma",style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: ConstantColors.primary
                ),),
                SizedBox(
                  height: 28,
                ),
                Text("Agree wuth Policy",style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: ConstantColors.primary
                ),),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis "
                    "molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla "
                    "accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus."
                    " Maecenas eget condimentum velit, sit amet feugiat lectus. Class ptent "
                    "taciti sociosqu ad litora torquent per conubia nostra, per inceptos"
                    " himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque"
                    " ante pulvinar. Donec ut rhoncus ex. Suspendisse ac we honcus nisl,"
                    " eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis"
                    " diam sit amet lacinia. Aliquam in elementum wf tellus.urabitur tempor"
                    " quis eros tempus lacinia. Nam bibendum we pellentesque quam a convallis. "
                    "Lorem ipsum dolor sit amet, bibend consectetur adipiscing elit. Etiam eu "
                    "turpis molestie, dictum est are mattis tellus. Sed dignissim, metus nec "
                    "fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed "
                    "risus. Maecenas eget est condimentum velit, sit amet feugiat lectus. Class "
                    "ptent taciti eget  et stsociosqu ad litora torquent per conubia nostra, per "
                    "inceptos ege et himenaeos. Praesent auctor purus luctus enim egestas, ac eget"
                    " are scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac we honcus"
                    " nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis"
                    " convallis diam sit amet lacinia. Aliquam in elementum wf tellus.urabitur"
                    " tempor quis eros tempus lacinia. Nam bibendum we pellentesque quam "
                    "a convallis. ",

                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    color: ConstantColors.primary
                ),),


              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:  Container(
        color: Color(0xffBDCFFF),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomButton(
                buttonFunction: () {
                  Get.to(()=>BottomNavigationBarScreen());
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
        ),
      ),
    );
  }
}

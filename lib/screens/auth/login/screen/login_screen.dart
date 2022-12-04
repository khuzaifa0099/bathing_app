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
import '../../guidline/guidline_screen.dart';
class LoginScreen extends StatelessWidget {
  //final _controller = OnboardingController();
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
                          height: 40,
                        ),
                        Center(
                          child: Image.asset(ImageConstant.logo,
                          height: 100,
                          ),
                        ),
                        SizedBox(
                          height: 48,
                        ),
                        Text("Welcome!",style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                          color: ConstantColors.primary
                        ),),
                        SizedBox(
                          height: 13,
                        ),
                        Text("Login to your Account",style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.grey
                        ),),
                        SizedBox(
                          height: 35,
                        ),
                        kCustomeTextField(
                          hintText: "Email",
                          icon: Icon(Icons.email_outlined),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        kCustomeTextField(
                          hintText: "password",
                          icon: Icon(Icons.lock),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Forgot Paswoord?",
                              style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                color: ConstantColors.primary
                            ),),
                          ],
                        ),
                        SizedBox(
                          height: 37,
                        ),
                        CustomButton(
                          buttonFunction: () {
                            Get.to(()=>GuidLineScreen());
                          },
                          textString: "Login",
                          buttonColor: ConstantColors.primary,
                          buttonHeight: 54,
                          buttonWidth: MediaQuery.of(context).size.width,
                          textColor: Colors.white,
                          textSize: 20,
                          textWeight: FontWeight.w700,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 1,
                                color: ConstantColors.primary,
                              ),
                            ),
                            Text("  OR  "),
                            Expanded(
                              child: Divider(
                                thickness: 1,
                                color: ConstantColors.primary,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(child: Text("Login With Social Media",
                        style: GoogleFonts.mulish(
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                        ),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(ImageConstant.google,
                            height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: 37,
                            ),
                            Image.asset(ImageConstant.apple,
                              height: 40,
                              width: 40,
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don’t have an account?  ",
                            style: GoogleFonts.mulish(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 10
                            ),
                            ),
                            InkWell(
                              onTap: (){
                                Get.to(()=> SignUpScreen());
                              },
                              child: Text("Signup",
                                style: GoogleFonts.mulish(
                                    color: ConstantColors.primary,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20
                                ),
                              ),
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
// return Scaffold(
// body: Container(
// height: MediaQuery.of(context).size.height,
// width: MediaQuery.of(context).size.width,
// decoration: BoxDecoration(
// gradient: LinearGradient(
// colors: [
// const Color(0xffFFD4FF),
// const Color(0xffBDCFFF),
// ],
// begin: Alignment.topLeft,
// end: Alignment.bottomRight,
// ),
// ),
// child: SingleChildScrollView(
// child: Padding(
// padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 28),
// ),
// ),
// ),
// );

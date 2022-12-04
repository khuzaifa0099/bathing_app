import 'package:bathing_app/constant/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../reusable_widget/custom_button.dart';
import '../../../constant/images.dart';
import '../../../reusable_widget/navigation_bar.dart';
import '../../../reusable_widget/reusable_textformfield.dart';
import '../component/payment_screen_component.dart';



class PaymentMethodSave extends StatefulWidget {
  @override
  State<PaymentMethodSave> createState() => _PaymentMethodSaveState();
}
class _PaymentMethodSaveState extends State<PaymentMethodSave> {
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 28),
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
                        Text("Payment Method",style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: ConstantColors.primary
                        ),),
                        Text(""),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ConstantColors.primary,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(ImageConstant.elips,
                            height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Payment Method",style: GoogleFonts.mulish(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Color(0xffFFD4FF)
                                    ),),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("USD 10.00",style: GoogleFonts.mulish(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: Colors.white
                                    ),),
                                  ],
                                ),
                              Image.asset(ImageConstant.dot,
                                height: 10,
                              ),
                            ],),
                            Text("****  ****  ****  1234",style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xffFFD4FF)
                            ),),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    kCustomeTextField(
                      hintText: "Full Name",
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    kCustomeTextField(
                      hintText: "Card Number",
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: kCustomeTextField(
                            hintText: "CVV",
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Expanded(
                          child: kCustomeTextField(
                            hintText: "Expireed Date",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),



                  ],
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar:  Container(
        color: Color(0xffBDCFFF),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
          child: CustomButton(
            buttonFunction: () {
              Get.to(()=>BottomNavigationBarScreen());
            },
            textString: "Save",
            buttonColor: ConstantColors.primary,
            buttonHeight: 50,
            buttonWidth: MediaQuery.of(context).size.width,
            textColor: Colors.white,
            textSize: 15,
            textWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

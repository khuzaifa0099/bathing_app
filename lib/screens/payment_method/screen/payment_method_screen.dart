import 'package:bathing_app/constant/colors.dart';
import 'package:bathing_app/screens/payment_method/screen/save_payment_method_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../reusable_widget/custom_button.dart';
import '../../../constant/images.dart';
import '../../../reusable_widget/navigation_bar.dart';
import '../component/payment_screen_component.dart';


enum SingingCharacter { paypal, credit_card, debit_card,apple_pay,google_pay,webmoney }
class PaymentMethod extends StatefulWidget {
  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}
class _PaymentMethodState extends State<PaymentMethod> {
  SingingCharacter? _character = SingingCharacter.paypal;
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
                    Text("Select Your Payment Method",style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: ConstantColors.primary
                    ),),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Add new Debit/Credit Card",style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: ConstantColors.primary
                    ),),

                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ReusableListTile(
                    image: ImageConstant.paypal,
                    num: "Paypal",
                    radio: Radio<SingingCharacter>(
                      activeColor: ConstantColors.primary,
                      value: SingingCharacter.paypal,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ReusableListTile(
                    image: ImageConstant.crd_card,
                    num: "Credit Card",
                    radio: Radio<SingingCharacter>(
                      activeColor: ConstantColors.primary,
                      value: SingingCharacter.credit_card,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ReusableListTile(
                    image: ImageConstant.db_card,
                    num: "Debit Card",
                    radio: Radio<SingingCharacter>(
                      activeColor: ConstantColors.primary,
                      value: SingingCharacter.debit_card,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ReusableListTile(
                    image: ImageConstant.apple,
                    num: "Apple Pay",
                    radio: Radio<SingingCharacter>(
                      activeColor: ConstantColors.primary,
                      value: SingingCharacter.apple_pay,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ReusableListTile(
                    image: ImageConstant.google,
                    num: "Google Pay",
                    radio: Radio<SingingCharacter>(
                      activeColor: ConstantColors.primary,
                      value: SingingCharacter.google_pay,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Webmoney",style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 12
                    ),),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReusableListTile(
                    image: ImageConstant.webmoney,
                    num: "Google Pay",
                    radio: Radio<SingingCharacter>(
                      activeColor: ConstantColors.primary,
                      value: SingingCharacter.webmoney,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ],
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
              Get.to(()=>PaymentMethodSave());
            },
            textString: "Add",
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

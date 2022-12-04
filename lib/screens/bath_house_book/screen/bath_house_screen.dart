import 'package:bathing_app/constant/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';
import '../../../../reusable_widget/custom_button.dart';
import '../../../reusable_widget/navigation_bar.dart';
import '../../../reusable_widget/reusable_textformfield.dart';
import '../../payment_method/screen/payment_method_screen.dart';


class BathHouseScreen extends StatefulWidget {
  @override
  State<BathHouseScreen> createState() => _BathHouseScreenState();
}

class _BathHouseScreenState extends State<BathHouseScreen> {
  var  selectTime;
  @override
  Widget build(BuildContext context) {
    var rating = 0.0;
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
                Icon(Icons.arrow_back_ios,size: 20,),
                SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 290,
                      width: MediaQuery.of(context).size.width/1.8,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/g3.png"),
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("#bath house",style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Color(0xffB4B0B0)
                          ),),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Luxe Bath House",style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: ConstantColors.primary
                          ),),
                          SizedBox(
                            height: 6,
                          ),
                          Text("Axis bath house house is the best bath near your home.",style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Color(0xff7279B3)
                          ),),
                          SizedBox(
                            height: 11,
                          ),
                          Text("Location",style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Color(0xff000000)
                          ),),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined,
                              size: 12,
                              ),
                              Text("California Stereet 8 AE",style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 6,
                                  color: Color(0xff7279B3)
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Avavilability",style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Color(0xff000000)
                          ),),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Available on Sunday ",style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w500,
                              fontSize: 6,
                              color: Color(0xff7279B3)
                          ),),
                          SizedBox(
                            height: 11,
                          ),
                          SmoothStarRating(
                              allowHalfRating: true,
                              onRatingChanged: (v) {
                                rating = v;
                                setState(() {});
                              },
                              starCount: 5,
                              rating: rating,
                              size: 15,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star_border,
                              color: Colors.amber,
                              borderColor: Colors.amber,
                              spacing: 0.0
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/P1.png",
                              height: 30,
                              ),
                              Image.asset("assets/images/P2.png",
                              height: 30,
                              ),
                              Image.asset("assets/images/P1.png",
                                height: 30,
                              ),
                              Image.asset("assets/images/P2.png",
                                height: 30,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("55 Reviews",style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 6,
                                  color: Color(0xff7279B3)
                              ),),
                              Text("View all",style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 6,
                                  color: Color(0xff3D2645)
                              ),),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    buildContainer(image: 'assets/images/g1.png'),
                    SizedBox(width: 5,),
                    buildContainer(image: 'assets/images/g2.png'),
                    SizedBox(width: 5,),
                    buildContainer(image: 'assets/images/g3.png'),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Description",style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: ConstantColors.primary
                ),),
                SizedBox(
                  height: 6,
                ),
                Text("Lorem ipsum dolor sit amet consectetur. Vestibulum mauris odio eget purus congue "
                    "elementum viverra in elementum. Aliquet Aliquet gravida lacinia quam a ac. Sapien "
                    "ipsum phasellus libero senectus. Vel pellentesque vel pellentesque purus amet nunc "
                    "neque.neque Aliquam est sit laoreet nibh sapien. A nunc faucibus ut eleifend dolor "
                    "eget lectus commodo. Sed tortor nulla massa ultrices.  ultrices. Tincidunt id id "
                    "morbi euismod in cras dis ut. Lorem ipsum dolor sit amet consectetur. Vestibulum"
                    " mauris odio eget puru conguadrtyu elementum viverra in elementum. Aliquet gravida"
                    " lacinia quam a ac. Sapien ipsum phasellus libero senectus. Vel pellente  velatyghjk"
                    " pellentesque purus amet nunc neque. Aliquam est sit laoreet nibh sapien. A nunc "
                    "faucibus ut eleifend dolor eget lectus commodo.  Sed tortor nulla massa ultrices."
                    " Tincidunt id id morbi euismod in cras dis ut.Lorem ipsum dolor sit amet consectetur."
                    " Vestibulumthjkl mauris odio eget purus congue elementum viverra in elementum. Aliquet"
                    " gravida lacinia quam a ac. Sapien ipsum phasellus libero fsenectus. Vel pellentesque"
                    " vel pellentesque purus amet nunc neque. Aliquam est sit laoreet nibh sapien. "
                    "A nunc faucibus ut eleifend dolor eget lectus commodo. Sed tortor nulla massa"
                    " ultrices. Tincidunt id id morbi euismod in cras dis ut.Lorem ipsum dolor sit"
                    " amet consectetur. Vestibulum mauris odio eget purus congue elementum viverra "
                    "in elementum. Aliquet gravida lacinia quam a ac. Sapien ipsum phasellus libero "
                    "senectus. Vel pellentesque vel pellentesque purus amet nunc neque. Aliquam est sit "
                    "laoreet nibh sapien. A ",
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w500,
                    fontSize: 6,
                    color: Colors.white
                ),),
                SizedBox(
                  height: 15,
                ),
                Text("Time & Date",style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: ConstantColors.primary
                ),),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Expanded(
                      child: kCustomeTextField(
                        hintText: "01st, October, 2022",
                        sufxicon: Icon(Icons.calendar_today_outlined),
                      ),
                    ),
                    Text("                                      ")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildTimeSelectContainer(text: '10:00 AM'),
                      SizedBox(width: 4,),
                      buildTimeSelectContainer(text: '12:00 AM'),
                      SizedBox(width: 4,),
                      buildTimeSelectContainer(text: '02:00 PM'),
                      SizedBox(width: 4,),
                      buildTimeSelectContainer(text: '04:00 PM'),
                      SizedBox(width: 4,),
                      buildTimeSelectContainer(text: '06:00 PM'),
                      SizedBox(width: 4,),
                      buildTimeSelectContainer(text: '08:00 PM'),
                      SizedBox(width: 4,),
                      buildTimeSelectContainer(text: '10:00 PM'),
                      SizedBox(width: 4,),
                      buildTimeSelectContainer(text: '12:00 AM'),
                      SizedBox(width: 4,),
                      buildTimeSelectContainer(text: '02:00 AM'),
                      SizedBox(width: 4,),
                      buildTimeSelectContainer(text: '04:00 AM'),
                      SizedBox(width: 4,),
                      buildTimeSelectContainer(text: '06:00 AM'),
                      SizedBox(width: 4,),
                      buildTimeSelectContainer(text: '08:00 AM'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:  Container(
        color: Color(0xffBDCFFF),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: CustomButton(
            buttonFunction: () {
              Get.to(()=>PaymentMethod());
            },
            textString: "Book Now",
            buttonColor: ConstantColors.primary,
            buttonHeight: 50,
            buttonWidth: MediaQuery.of(context).size.width,
            textColor: Colors.white,
            textSize: 15,
            textWeight: FontWeight.w700,
          ),
        )
      ),
    );
  }

  Container buildTimeSelectContainer({required String text}) {
    return Container(
                    height: 38,
                    width: 108,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1,color: Colors.white),
                    ),
                    child: Center(
                      child: Text(text,style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: ConstantColors.primary
                      ),),
                    ),
                  );
  }
  Container buildContainer({required String image}) {
    return Container(
                    height: 107,
                    width: MediaQuery.of(context).size.width/5.7,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.fill
                      )
                    ),
                  );
  }
}

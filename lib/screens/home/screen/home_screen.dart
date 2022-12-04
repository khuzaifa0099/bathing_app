import 'package:bathing_app/constant/colors.dart';
import 'package:bathing_app/constant/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../models/home_model.dart';
import '../../../reusable_widget/custom_button.dart';
import '../../../reusable_widget/reusable_textformfield.dart';
import '../../bath_house_book/screen/bath_house_screen.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      drawer: buildDrawer(context),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            _scaffoldkey.currentState?.openDrawer();
                          },
                          icon: Icon(
                            Icons.menu_sharp,
                            color: Colors.black,
                            size: 30,
                          )),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Emma",
                              style: GoogleFonts.mulish(
                                  color: ConstantColors.primary,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,
                                color: Color(0xff7279B3),
                                ),
                                Text("California",style: GoogleFonts.mulish(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xff7279B3)
                                ),)
                              ],
                            ),
                          ],
                        ),
                      ),
                      Image.asset(ImageConstant.messanger),



                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: kCustomeTextField(
                            hintText: "Search Doctor",
                            sufxicon: Icon(Icons.search),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              color: ConstantColors.primary,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Icon(Icons.my_location_rounded,
                          color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xff3D2645),
                            const Color(0xffFFFFFF),
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Text(
                                  "Emma",
                                  style: GoogleFonts.mulish(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700),
                                ),
                                Expanded(
                                  child: Text(
                                    "Start Your Period Cycle with Bathing",
                                    style: GoogleFonts.mulish(
                                        color: Color(0xffB7BFFE),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                CustomButton(
                                  buttonFunction: () {
                                    //Get.to(()=>OtpScreen());
                                  },
                                  textString: "Next",
                                  buttonColor: ConstantColors.color4,
                                  buttonHeight: 32,
                                  buttonWidth: 100,
                                  textColor: Colors.white,
                                  textSize: 15,
                                  textWeight: FontWeight.w700,
                                ),
                              ],),
                            ),
                            Expanded(
                              child: CircularPercentIndicator(
                                radius: 60.0,
                                lineWidth: 10.0,
                                percent: 1.0,
                                center: new Text("Progress",style: GoogleFonts.mulish(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: ConstantColors.color1
                                ),),
                                progressColor: ConstantColors.color1,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Book Bath House",style: GoogleFonts.mulish(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: ConstantColors.primary
                    ),),
                    // SizedBox(
                    //   height: 24,
                    // ),
                    GridView.builder(
                        scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          mainAxisExtent: 245,
                          crossAxisCount: 2,
                        ),
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: (){
                             // Get.to(()=> DetailesScreen(categoriesModel: catogriies[index],));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffEFEEEC),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height:120,
                                      width: double.infinity,
                                      child: Image.asset(catogriies[index].image),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      catogriies[index].name_title,

                                      style: GoogleFonts.raleway(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: ConstantColors.primary
                                    ),
                                    ),
                                    Text(
                                      catogriies[index].des,
                                      style: GoogleFonts.raleway(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          catogriies[index].price_title,
                                          style: GoogleFonts.raleway(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: ConstantColors.primary,
                                          ),
                                        ),
                                        Image.asset(catogriies[index].arrow_icon,
                                        height: 30,
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          )

                          ;
                        }
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: ConstantColors.primary,
      child: ListView(
        children: [
           DrawerHeader(
            decoration: BoxDecoration(
              color: ConstantColors.primary,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/1.PNG",
                height: 80,
                ),
                SizedBox(
                  height: 10,
                ),
                Text("My Son",style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                  color: Colors.white
                    ),),
                SizedBox(
                  height: 10,
                ),
                Text("Work hard in silence. Let your success be the noise",
                   style: GoogleFonts.mulish(
                     fontWeight: FontWeight.w500,
                     fontSize: 10,
                     color: Colors.grey
                 ),),
              ],
            ),
          ),
          InkWell(
              onTap: (){
                Get.to(()=>BathHouseScreen());
              },
              child: buildListTile( text: 'Book an Bath House', imag: 'assets/images/book.png')),
          buildListTile( text: 'Appointments', imag: 'assets/images/appoint.png'),
          buildListTile( text: 'Membership Packages', imag: 'assets/images/member.png'),
          buildListTile( text: 'Subscriptions', imag: 'assets/images/sub.png'),
          buildListTile( text: 'Halacha', imag: 'assets/images/halaca.png'),
          buildListTile( text: 'Cycle History', imag: 'assets/images/c_history.png'),
          buildListTile( text: 'Period History', imag: 'assets/images/ph.png'),
          buildListTile( text: 'Reminder', imag: 'assets/images/remind.png'),
          buildListTile( text: 'About Us', imag: 'assets/images/about.png'),


        ],
      ),
    );
  }

  ListTile buildListTile({required String imag, required String text}) {
    return ListTile(
          leading: Image.asset(imag,
          height: 20,
          ),
          title: Text(text,
          style: GoogleFonts.mulish(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white
          ),
          ),
        );
  }
}
class BuiledContainer extends StatelessWidget {
  Color? color;
  final image;
  String text;
  var height;
  var widget;
  BuiledContainer(
      {Key? key,
        this.color,
        required this.image,
        required this.text,
        this.widget,
        this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 108,
        width: MediaQuery.of(context).size.width / 3.32,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            children: [
              Text(text,style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w800,
                  fontSize: 11
              ),
              ),
              Image.asset(image,
                height: 80,
                width: MediaQuery.of(context).size.width/3.50,
              )
            ],
          ),
        ),
      );
    ;
  }
}
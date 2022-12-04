import 'package:bathing_app/constant/colors.dart';
import 'package:bathing_app/constant/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../reusable_widget/custom_button.dart';
import '../../signup/screen/signup_screen.dart';
import '../controller/page_view_controller.dart';


class PageViewScreen extends StatelessWidget {
  final _controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      PageView.builder(
        controller: _controller.pageController,
          onPageChanged: _controller.selectedPageIndex,
          itemCount: _controller.onboardingPages.length,
          itemBuilder: (context, index) {
            return
              Container(
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
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 56,
                                ),
                                InkWell(
                                  onTap: (){
                                   Get.to(()=>SignUpScreen());
                                  },
                                  child: Text(_controller.onboardingPages[index].title,style: GoogleFonts.mulish(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffB4B0B0),
                                  ),),
                                ),
                                SizedBox(
                                  height: 73,
                                ),
                                Text(_controller.onboardingPages[index].description,style: GoogleFonts.mulish(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: ConstantColors.primary,
                                ),)
                              ],
                            ),
                          ),
                          Container(child: Image.asset(_controller.onboardingPages[index].imagesAsset, width: 200,
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 95,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(_controller.onboardingPages.length,
                                  (index) => Obx((){
                                return Container(
                                  margin: EdgeInsets.all(1),
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: _controller.selectedPageIndex.value == index ? Colors.blue
                                        : Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                );
                              }
                              ))
                      ),

                    ],
                  ),
                ),
              ),
              );

          }),
      bottomNavigationBar:
      Container(
        color: Color(0xffBDCFFF),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
          child: Obx((){
            return
              CustomButton(
              buttonFunction: () {
                if(_controller.isLastPage){
                  Get.to(()=> SignUpScreen());
                }else{
                  _controller.forwardAction();
                }
              },
              textString: _controller.isLastPage ? "Get Started":'Next',
              buttonColor: ConstantColors.primary,
              buttonHeight: 54,
              buttonWidth: MediaQuery.of(context).size.width,
              textColor: Colors.white,
              textSize: 16,
              textWeight: FontWeight.w700,
            );
          }),

        ),
      ),
    );
  }
}

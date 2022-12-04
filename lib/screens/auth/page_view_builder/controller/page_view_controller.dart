import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../component/page_view_component.dart';

class OnboardingController extends GetxController{
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction(){
    if(isLastPage){

    }else{
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }
  List<OnboardingComponent> onboardingPages = [
    OnboardingComponent(
        "assets/images/page1.png",
        "skip",
        "Book Bath House With Bathing"
    ),
    OnboardingComponent(
        "assets/images/page2.png",
        "skip",
        "Track Your Period Cycle"
    ),

  ];
}
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../../constant/images.dart';
import '../page_view_builder/screen/page_view_builder.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder:
                    (context) => PageViewScreen()
                )
            )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
            image: DecorationImage(
              image: AssetImage(ImageConstant.splashImage),
              fit: BoxFit.fill,

            )
          ),
        ),
      ),
    );
  }
}




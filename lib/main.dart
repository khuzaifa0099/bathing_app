import 'package:bathing_app/constant/colors.dart';
import 'package:bathing_app/reusable_widget/navigation_bar.dart';
import 'package:bathing_app/screens/auth/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     home: const SplashScreen(),
     //home: const BottomNavigationBarScreen(),
    );
  }
}

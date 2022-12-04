import 'dart:ui';
import 'package:flutter/material.dart';
import '../../screens/home/screen/home_screen.dart';
import '../constant/colors.dart';


class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}
class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text("Alert"),
    Text("Profile"),
    Text("Profile"),
    Text("Profile"),

  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:
      ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0), ),
        child: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: BottomNavigationBar(
            backgroundColor: ConstantColors.primary,
            unselectedIconTheme: IconThemeData(
                color: ConstantColors.color4
            ),
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/home.png"),
                ),
                label: '',
               // backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/history.png"),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/booking.png"),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/notifiction.png"),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/profile.png"),
                ),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}

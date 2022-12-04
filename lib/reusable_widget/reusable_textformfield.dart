import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant/colors.dart';

class kCustomeTextField extends StatefulWidget {
  String? hintText;
  String? prfixText;
  TextEditingController? controller;
  Widget? icon;
  Widget? sufxicon;
  bool isPassword;
  final validate;
  bool check;
  final TextInputAction? inputAction;
  final FocusNode? focusNode;
  kCustomeTextField({
    this.hintText,
    this.controller,
    this.validate,
    this.isPassword=false,
    this.icon,
    this.check=false,
    this.inputAction,
    this.focusNode,
    this.prfixText,
    this.sufxicon
  });
  @override
  State<kCustomeTextField> createState() => _kCustomeTextFieldState();
}
class _kCustomeTextFieldState extends State<kCustomeTextField> {
  bool visible=false;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(5),
        ),
        child: TextFormField(
          controller: widget.controller,
          validator: widget.validate,
          style: TextStyle(
              color: Colors.black
          ),
          cursorColor: Colors.black,
          focusNode: widget.focusNode,
          textInputAction: widget.inputAction,
          obscureText: widget.isPassword==false?false:widget.isPassword,
          decoration: InputDecoration(
            suffixIcon: widget.sufxicon,
            prefixText: widget.prfixText,
            prefixStyle: TextStyle(color: Colors.black),
            border: InputBorder.none,
            hintStyle: GoogleFonts.raleway(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            fillColor: Colors.white10,
            contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
            hintText: widget.hintText??"hint Text",
            prefixIcon: widget.icon,
            filled: true,
          ),
        )
    );
  }
}
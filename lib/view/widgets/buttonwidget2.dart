import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';

class ButtonWidget2 extends StatelessWidget {
  final String title;
  const ButtonWidget2({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, bottom: 20),
      child: Center(
          child: Text(
        title,
        style: GoogleFonts.lora(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: ColorConstants.whitecolor),
      )),
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
          color: ColorConstants.browncolor,
          borderRadius: BorderRadius.circular(20)),
    );
  }
}

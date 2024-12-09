import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';

class GlobalButtonWidget extends StatelessWidget {
  final String text;
  const GlobalButtonWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          '$text',
          style: GoogleFonts.lora(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: ColorConstants.primarycolor),
        ),
      ),
      width: 241,
      height: 56,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorConstants.browncolor),
    );
  }
}

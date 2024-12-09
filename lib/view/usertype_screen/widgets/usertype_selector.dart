import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';

class UserTypeSelector extends StatelessWidget {
  String imgurl;
  String title;
  UserTypeSelector({super.key, required this.imgurl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            fit: BoxFit.cover,
            imgurl,
          ),
          SizedBox(height: 29),
          Text(
            '$title',
            style: GoogleFonts.lora(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: ColorConstants.browncolor),
          )
        ],
      ),
      height: 209,
      width: 173,
      decoration: BoxDecoration(
          border: Border.all(color: ColorConstants.browncolor),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white),
    );
  }
}

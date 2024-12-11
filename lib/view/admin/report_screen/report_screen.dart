import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';

class ReportScreen extends ConsumerWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorConstants.primarycolor,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 14, right: 14, top: 48, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Reports',
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    color: ColorConstants.browncolor),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Order History',
              style: GoogleFonts.lora(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: ColorConstants.browncolor),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  'From',
                  style: GoogleFonts.lora(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: ColorConstants.browncolor),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.calendar_month_outlined),
                      filled: true,
                      fillColor: ColorConstants.whitecolor,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'To',
                  style: GoogleFonts.lora(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: ColorConstants.browncolor),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.calendar_month_outlined),
                      filled: true,
                      fillColor: ColorConstants.whitecolor,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

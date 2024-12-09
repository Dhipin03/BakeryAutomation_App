import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/view/user/makepayment_screen/makepayment_screen.dart';
import 'package:lemons_bakery_app/view/widgets/buttonwidget2.dart';

class ProceedtobuyScreen extends ConsumerWidget {
  const ProceedtobuyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String selectedoption = "Razor pay";
    return Scaffold(
        backgroundColor: ColorConstants.primarycolor,
        body: Container(
          padding: EdgeInsets.only(top: 48, left: 14, right: 14),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: ColorConstants.browncolor,
                ),
              ),
              SizedBox(height: 80),
              buildDeliveryFormSection(selectedoption),
              SizedBox(height: 50),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MakepaymentScreen(),
                        ));
                  },
                  child: ButtonWidget2(title: "Continue"))
            ],
          ),
        ));
  }

  Widget buildDeliveryFormSection(String selectedoption) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pincode',
          style: GoogleFonts.lora(
              fontWeight: FontWeight.normal,
              fontSize: 12,
              color: ColorConstants.browncolor),
        ),
        SizedBox(height: 5),
        TextFormField(
          decoration: InputDecoration(
              fillColor: ColorConstants.whitecolor,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10))),
        ),
        SizedBox(height: 22),
        Text(
          'Delivering To',
          style: GoogleFonts.lora(
              fontWeight: FontWeight.normal,
              fontSize: 12,
              color: ColorConstants.browncolor),
        ),
        SizedBox(height: 5),
        TextFormField(
          maxLines: 6,
          decoration: InputDecoration(
              fillColor: ColorConstants.whitecolor,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10))),
        ),
        SizedBox(height: 20),
        Text(
          'Selected Payment Method',
          style: GoogleFonts.lora(
              fontWeight: FontWeight.normal,
              fontSize: 12,
              color: ColorConstants.browncolor),
        ),
        Row(
          children: [
            Radio<String>(
              value: "Pay on delivery",
              groupValue: selectedoption,
              onChanged: (value) {},
            ),
            Text(
              "Pay on delivery",
              style: GoogleFonts.lora(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: ColorConstants.browncolor),
            ),
          ],
        ),
        Row(
          children: [
            Radio<String>(
              value: "Razor pay",
              groupValue: selectedoption,
              onChanged: (value) {},
            ),
            Text(
              'Razor pay',
              style: GoogleFonts.lora(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: ColorConstants.browncolor),
            )
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/utils/constatnts/image_constants.dart';
import 'package:lemons_bakery_app/view/login_screen/login_screen.dart';
import 'package:lemons_bakery_app/view/usertype_screen/widgets/usertype_selector.dart';
import 'package:lemons_bakery_app/view/widgets/globalbutton_widget.dart';

class UsertypeScreen extends ConsumerWidget {
  const UsertypeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 59, horizontal: 14),
        width: double.infinity,
        color: ColorConstants.primarycolor,
        child: Column(
          children: [
            Text(
              'Choose Account Type',
              style: GoogleFonts.lora(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: ColorConstants.browncolor),
            ),
            SizedBox(height: 36),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UserTypeSelector(
                    imgurl: ImageConstants.ownerimg, title: 'Owner'),
                UserTypeSelector(
                    imgurl: ImageConstants.customerimg, title: 'Customer'),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                UserTypeSelector(
                    imgurl: ImageConstants.helperimg, title: 'Helper'),
              ],
            ),
            SizedBox(height: 100),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              child: GlobalButtonWidget(
                text: 'Next',
              ),
            )
          ],
        ),
      ),
    );
  }
}

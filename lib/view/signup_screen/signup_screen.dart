import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/utils/constatnts/image_constants.dart';
import 'package:lemons_bakery_app/view/login_screen/login_screen.dart';
import 'package:lemons_bakery_app/view/user/bottomnavbar_screen/bottomnavbar_screen.dart';

import 'package:lemons_bakery_app/view/widgets/globalbutton_widget.dart';

class SignupScreen extends ConsumerWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        color: ColorConstants.primarycolor,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildHeaderSection(),
              SizedBox(height: 30),
              _buildLoginformSection(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Column(
      children: [
        Image.asset(
          ImageConstants.lockimg,
          fit: BoxFit.cover,
          height: 127,
          width: 121,
        ),
        SizedBox(height: 30),
        Text(
          "Let's create an account for you",
          style: GoogleFonts.lora(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: ColorConstants.browncolor),
        ),
      ],
    );
  }

  Widget _buildLoginformSection(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email_outlined,
                color: ColorConstants.greycolor,
              ),
              hintText: 'Email',
              hintStyle:
                  GoogleFonts.lora(fontWeight: FontWeight.normal, fontSize: 14),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              )),
        ),
        SizedBox(height: 30),
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.password_outlined,
                color: ColorConstants.greycolor,
              ),
              hintText: 'password',
              hintStyle:
                  GoogleFonts.lora(fontWeight: FontWeight.normal, fontSize: 14),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              )),
        ),
        SizedBox(height: 30),
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.password_outlined,
                color: ColorConstants.greycolor,
              ),
              hintText: 'Confirm password',
              hintStyle:
                  GoogleFonts.lora(fontWeight: FontWeight.normal, fontSize: 14),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              )),
        ),
        SizedBox(height: 34),
        InkWell(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomnavbarScreen(),
                ),
                (route) => false,
              );
            },
            child: GlobalButtonWidget(text: 'sign Up')),
        SizedBox(height: 70),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already a member? ',
              style: GoogleFonts.lora(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: ColorConstants.greycolor),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              child: Text(
                'Login Now',
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: ColorConstants.greycolor),
              ),
            )
          ],
        )
      ],
    );
  }
}

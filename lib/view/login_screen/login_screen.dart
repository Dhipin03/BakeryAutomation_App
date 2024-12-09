import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/utils/constatnts/image_constants.dart';
import 'package:lemons_bakery_app/view/signup_screen/signup_screen.dart';
import 'package:lemons_bakery_app/view/widgets/globalbutton_widget.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

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
          "Welcome back you've been missed!",
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
        SizedBox(height: 13),
        Padding(
          padding: const EdgeInsets.only(left: 210),
          child: Text(
            'Forgot password?',
            style: GoogleFonts.lora(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: ColorConstants.browncolor),
          ),
        ),
        SizedBox(height: 30),
        GlobalButtonWidget(text: 'Login'),
        SizedBox(height: 30),
        Row(
          children: [
            Expanded(child: Divider(color: ColorConstants.browncolor)),
            Text(
              ' Or continue with ',
              style: GoogleFonts.lora(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: ColorConstants.browncolor),
            ),
            Expanded(child: Divider(color: ColorConstants.browncolor)),
          ],
        ),
        SizedBox(height: 30),
        Container(
          height: 71,
          width: 69,
          decoration: BoxDecoration(
            color: ColorConstants.whitecolor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Image.asset(
              ImageConstants.googleimg,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Not a memebr? ',
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
                      builder: (context) => SignupScreen(),
                    ));
              },
              child: Text(
                'Register Now',
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

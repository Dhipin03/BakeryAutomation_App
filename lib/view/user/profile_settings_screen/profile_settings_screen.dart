import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';

class ProfileSettingsScreen extends ConsumerWidget {
  const ProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorConstants.primarycolor,
      body: Padding(
        padding: const EdgeInsets.only(left: 14, top: 48, right: 14),
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
            SizedBox(height: 10),
            Center(
              child: Text(
                'Profile Settings',
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: ColorConstants.browncolor),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Text(
                    'Name',
                    style: GoogleFonts.lora(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.browncolor),
                  ),
                  SizedBox(width: 110),
                  Text(
                    ':',
                    style: GoogleFonts.lora(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.browncolor),
                  ),
                  SizedBox(width: 60),
                  Expanded(
                    child: Text(
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      'Dhipin',
                      style: GoogleFonts.lora(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.browncolor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Text(
                    'Phone Number',
                    style: GoogleFonts.lora(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.browncolor),
                  ),
                  SizedBox(width: 46),
                  Text(
                    ':',
                    style: GoogleFonts.lora(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.browncolor),
                  ),
                  SizedBox(width: 60),
                  Expanded(
                    child: Text(
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      '79091356482',
                      style: GoogleFonts.lora(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.browncolor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Text(
                    'Gmail',
                    style: GoogleFonts.lora(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.browncolor),
                  ),
                  SizedBox(width: 108),
                  Text(
                    ':',
                    style: GoogleFonts.lora(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.browncolor),
                  ),
                  SizedBox(width: 60),
                  Expanded(
                    child: Text(
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      'test@gmail.com',
                      style: GoogleFonts.lora(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.browncolor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
            Center(
                child: InkWell(
              onTap: () {
                showDialog<void>(
                  context: context,
                  barrierDismissible: false, // user must tap button!
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Center(
                        child: Text(
                          'Set a new Password',
                          style: GoogleFonts.lora(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: ColorConstants.browncolor),
                        ),
                      ),
                      content: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)),
                                hintText: 'New Password',
                                hintStyle: GoogleFonts.lora(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                    color: ColorConstants.browncolor),
                                filled: true,
                                fillColor: ColorConstants.primarycolor,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)),
                                hintText: 'Confirm Password',
                                hintStyle: GoogleFonts.lora(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                    color: ColorConstants.browncolor),
                                filled: true,
                                fillColor: ColorConstants.primarycolor,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Cancel',
                              style: GoogleFonts.lora(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: ColorConstants.browncolor),
                            )),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Save',
                            style: GoogleFonts.lora(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: ColorConstants.browncolor),
                          ),
                        )
                      ],
                    );
                  },
                );
              },
              child: Text(
                'Change Password?',
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: ColorConstants.browncolor),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

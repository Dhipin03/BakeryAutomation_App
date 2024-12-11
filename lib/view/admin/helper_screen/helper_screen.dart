import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/view/widgets/buttonwidget2.dart';

class HelperScreen extends ConsumerWidget {
  const HelperScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: ColorConstants.browncolor,
        child: Icon(
          Icons.add,
          color: ColorConstants.primarycolor,
        ),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true, // Important for full height
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => DraggableScrollableSheet(
              initialChildSize: 0.7, // Increased initial size
              minChildSize: 0.3,
              maxChildSize: 0.95,
              builder: (context, scrollController) => Container(
                decoration: BoxDecoration(
                  color: ColorConstants.primarycolor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 14,
                      right: 14,
                      top: 20,
                      bottom: 20,
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: ColorConstants.whitecolor,
                          radius: 40,
                          child: Icon(
                            Icons.add_a_photo,
                            color: ColorConstants.browncolor,
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                            hintStyle: GoogleFonts.lora(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: ColorConstants.browncolor),
                            hintText: 'Name',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            fillColor: ColorConstants.whitecolor,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            hintStyle: GoogleFonts.lora(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: ColorConstants.browncolor),
                            hintText: 'Phone Number',
                            fillColor: ColorConstants.whitecolor,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            hintStyle: GoogleFonts.lora(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: ColorConstants.browncolor),
                            hintText: 'Email',
                            fillColor: ColorConstants.whitecolor,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            hintStyle: GoogleFonts.lora(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: ColorConstants.browncolor),
                            hintText: 'Password',
                            fillColor: ColorConstants.whitecolor,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            hintStyle: GoogleFonts.lora(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: ColorConstants.browncolor),
                            hintText: 'Confirm Password',
                            fillColor: ColorConstants.whitecolor,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: ButtonWidget2(title: "Save"))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      backgroundColor: ColorConstants.primarycolor,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 14, right: 14, top: 48, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  'Helper',
                  style: GoogleFonts.lora(
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                      color: ColorConstants.browncolor),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          foregroundImage: NetworkImage(
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Name',
                                  style: GoogleFonts.lora(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: ColorConstants.browncolor),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  ':',
                                  style: GoogleFonts.lora(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: ColorConstants.browncolor),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  'Dhipin',
                                  style: GoogleFonts.lora(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: ColorConstants.browncolor),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  'phone',
                                  style: GoogleFonts.lora(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: ColorConstants.browncolor),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  ':',
                                  style: GoogleFonts.lora(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: ColorConstants.browncolor),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  '7909137542',
                                  style: GoogleFonts.lora(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: ColorConstants.browncolor),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  'Gmail',
                                  style: GoogleFonts.lora(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: ColorConstants.browncolor),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  ':',
                                  style: GoogleFonts.lora(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: ColorConstants.browncolor),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  'test@gmail.com',
                                  style: GoogleFonts.lora(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: ColorConstants.browncolor),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.edit_outlined,
                                    color: ColorConstants.browncolor,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.delete_outlined,
                                    color: ColorConstants.browncolor,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                    decoration: BoxDecoration(
                        color: ColorConstants.whitecolor,
                        borderRadius: BorderRadius.circular(15)),
                    width: double.infinity,
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

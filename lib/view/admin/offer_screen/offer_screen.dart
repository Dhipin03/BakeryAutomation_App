import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/utils/constatnts/image_constants.dart';
import 'package:lemons_bakery_app/view/widgets/buttonwidget2.dart';

class OfferScreen extends ConsumerWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: ColorConstants.browncolor,
        onPressed: () {
          showDialog<void>(
            context: context,
            barrierDismissible: false, // user must tap button!
            builder: (BuildContext context) {
              return AlertDialog(
                title: Center(
                  child: Text(
                    'Add Offers',
                    style: GoogleFonts.lora(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.browncolor),
                  ),
                ),
                content: SingleChildScrollView(
                  child: Container(
                    width: 500,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 5),
                        TextFormField(
                          maxLines: 2,
                          decoration: InputDecoration(
                            hintStyle: GoogleFonts.lora(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: ColorConstants.browncolor),
                            hintText: 'Offer Caption',
                            filled: true,
                            fillColor: ColorConstants.primarycolor,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          maxLines: 3,
                          decoration: InputDecoration(
                            hintStyle: GoogleFonts.lora(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: ColorConstants.browncolor),
                            hintText: 'Offer Description',
                            filled: true,
                            fillColor: ColorConstants.primarycolor,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            hintStyle: GoogleFonts.lora(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: ColorConstants.browncolor),
                            hintText: 'Valid Up to',
                            filled: true,
                            fillColor: ColorConstants.primarycolor,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none),
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: ButtonWidget2(title: 'Save'))
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: Icon(
          Icons.add,
          color: ColorConstants.primarycolor,
        ),
      ),
      backgroundColor: ColorConstants.primarycolor,
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14, top: 48),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // IconButton(
              //   onPressed: () {n},
              //   icon: Icon(
              //     Icons.arrow_back_ios,
              //     color: ColorConstants.browncolor,
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Offers',
                    style: GoogleFonts.lora(
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                        color: ColorConstants.browncolor),
                  ),
                  SizedBox(width: 5),
                  Image.asset(
                    ImageConstants.gifticon,
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                  )
                ],
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
                        Expanded(
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            softWrap: true,
                            '50% off on Cream Buns',
                            style: GoogleFonts.lora(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: ColorConstants.browncolor),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Validity up to 25-12-2025',
                                style: GoogleFonts.lora(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: ColorConstants.browncolor),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.delete_outlined,
                                      color: ColorConstants.browncolor,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.edit_outlined,
                                      color: ColorConstants.browncolor,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                    decoration: BoxDecoration(
                        color: ColorConstants.whitecolor,
                        borderRadius: BorderRadius.circular(15)),
                    width: double.infinity,
                    height: 150,
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

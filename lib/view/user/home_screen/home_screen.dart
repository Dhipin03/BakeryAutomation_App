import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/utils/constatnts/image_constants.dart';
import 'package:lemons_bakery_app/view/user/home_screen/widgets/foodimage_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorConstants.primarycolor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 34),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTodaysSpecialSection(),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Offer Zone ',
                          style: GoogleFonts.lora(
                              fontWeight: FontWeight.w600,
                              fontSize: 30,
                              color: ColorConstants.browncolor),
                        ),
                        Image.asset(
                          ImageConstants.offertagimg,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.5,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) => index == 3
                          ? Container(
                              child: Center(
                                child: Image.asset(
                                  fit: BoxFit.cover,
                                  ImageConstants.closeimg,
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors
                                    .grey.shade200, // Add a background color
                              ),
                            )
                          : Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 28, horizontal: 24),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors
                                    .grey.shade200, // Add a background color
                              ),
                              child: Center(
                                child: Text(
                                  '50% of on Snacks!',
                                  style: GoogleFonts.lora(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 24,
                                      color: ColorConstants.browncolor),
                                ), // Optional: add content
                              ),
                            ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTodaysSpecialSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text(
            "Today's Special",
            style: GoogleFonts.lora(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: ColorConstants.browncolor),
          ),
        ),
        SizedBox(
          height: 170,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(
                left: 14,
                top: 20,
              ),
              child: FoodImageWidget(
                imgurl:
                    'https://images.pexels.com/photos/1108117/pexels-photo-1108117.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
            ),
          ),
        )
      ],
    );
  }
}

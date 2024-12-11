import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';

class YourOrderScreen extends ConsumerWidget {
  const YourOrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorConstants.primarycolor,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 14, right: 14, top: 48, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: ColorConstants.browncolor,
                  )),
              Center(
                child: Text(
                  'Your Orders',
                  style: GoogleFonts.lora(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            fit: BoxFit.cover,
                            'https://images.pexels.com/photos/36756/food-pizza-roll-baked.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            height: 105,
                            width: 137,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Egg Puffs',
                              style: GoogleFonts.lora(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: ColorConstants.browncolor),
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 4,
                                  backgroundColor: ColorConstants.browncolor,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  'Order Canceled',
                                  style: GoogleFonts.lora(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 11,
                                      color: ColorConstants.browncolor),
                                ),
                              ],
                            )
                          ],
                        )
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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/utils/constatnts/image_constants.dart';
import 'package:lemons_bakery_app/view/widgets/globalbutton_widget.dart';

class ItemdetailScreen extends ConsumerWidget {
  const ItemdetailScreen({super.key});

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
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: ColorConstants.browncolor,
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Text(
                'Egg puffs',
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: ColorConstants.browncolor),
              ),
            ),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                fit: BoxFit.cover,
                'https://images.pexels.com/photos/36756/food-pizza-roll-baked.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                height: 309,
                width: double.infinity,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Qty',
                  style: GoogleFonts.lora(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: ColorConstants.browncolor),
                ),
                SizedBox(width: 5),
                Image.asset(fit: BoxFit.cover, ImageConstants.removeicon),
                SizedBox(width: 5),
                Container(
                  child: Center(
                    child: Text(
                      '1',
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                          color: ColorConstants.browncolor),
                    ),
                  ),
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      color: ColorConstants.whitecolor,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(width: 5),
                Image.asset(fit: BoxFit.cover, ImageConstants.addicon),
                Spacer(),
                Text(
                  'Rs. 30',
                  style: GoogleFonts.lora(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: ColorConstants.browncolor),
                )
              ],
            ),
            SizedBox(height: 90),
            Center(child: GlobalButtonWidget(text: 'Add to Cart'))
          ],
        ),
      ),
    );
  }
}

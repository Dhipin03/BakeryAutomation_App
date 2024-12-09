import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/view/user/cart_screen/widgets/cartitem_card.dart';
import 'package:lemons_bakery_app/view/user/proceedtobuy_screen/proceedtobuy_screen.dart';
import 'package:lemons_bakery_app/view/widgets/buttonwidget2.dart';

class CartScreeen extends StatelessWidget {
  const CartScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primarycolor,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 20),
                itemCount: 3,
                itemBuilder: (context, index) => CartItemCard(),
              ),
            ),
            Row(
              children: [
                Text(
                  'Sub Total',
                  style: GoogleFonts.lora(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: ColorConstants.browncolor),
                ),
                Spacer(),
                Text(
                  'Rs. 1',
                  style: GoogleFonts.lora(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: ColorConstants.browncolor),
                )
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProceedtobuyScreen(),
                    ));
              },
              child: ButtonWidget2(
                title: 'Proceed to Buy',
              ),
            )
          ],
        ),
      ),
    );
  }
}

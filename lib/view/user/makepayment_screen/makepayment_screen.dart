import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/view/user/cart_screen/widgets/cartitem_card.dart';
import 'package:lemons_bakery_app/view/widgets/buttonwidget2.dart';

class MakepaymentScreen extends ConsumerWidget {
  const MakepaymentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorConstants.primarycolor,
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14, top: 48, bottom: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildPaymentDetailsSection(context),
              SizedBox(height: 30),
              buildItemListSection(),
              //SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Column buildItemListSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Items',
          style: GoogleFonts.lora(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: ColorConstants.browncolor),
        ),
        ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => CartItemCard(),
            separatorBuilder: (context, index) => SizedBox(height: 10),
            itemCount: 4),
        SizedBox(height: 20),
        InkWell(
          onTap: () {}, //payment Logic(razor Pay)
          child: ButtonWidget2(title: "Place your Order"),
        )
      ],
    );
  }

  Widget buildPaymentDetailsSection(BuildContext context) {
    return Column(
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
        SizedBox(height: 40),
        Row(
          children: [
            Text(
              'Delivery Address',
              style: GoogleFonts.lora(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: ColorConstants.browncolor),
            ),
            SizedBox(width: 30),
            Text(':'),
            Spacer(),
            Expanded(
              child: Text(
                softWrap: true,
                overflow: TextOverflow.clip,
                'Mangdath(H) madathumpady p o',
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: ColorConstants.browncolor),
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Text(
              'Amount',
              style: GoogleFonts.lora(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: ColorConstants.browncolor),
            ),
            SizedBox(width: 83),
            Text(':'),
            Spacer(),
            Expanded(
              child: Text(
                '2000000',
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: ColorConstants.browncolor),
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Text(
              softWrap: true,
              'Delivery fee',
              style: GoogleFonts.lora(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: ColorConstants.browncolor),
            ),
            SizedBox(width: 60),
            Text(':'),
            Spacer(),
            Expanded(
              child: Text(
                softWrap: true,
                'Nil',
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: ColorConstants.browncolor),
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Text(
              softWrap: true,
              'Order Total',
              style: GoogleFonts.lora(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: ColorConstants.browncolor),
            ),
            SizedBox(width: 60),
            Text(':'),
            Spacer(),
            Expanded(
              child: Text(
                softWrap: true,
                '20000000',
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: ColorConstants.browncolor),
              ),
            )
          ],
        )
      ],
    );
  }
}

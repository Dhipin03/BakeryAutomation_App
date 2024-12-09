import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/utils/constatnts/image_constants.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 7, left: 14, right: 14),
      decoration: BoxDecoration(
          color: ColorConstants.whitecolor,
          borderRadius: BorderRadius.circular(20)),
      height: 167,
      width: 347,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  fit: BoxFit.cover,
                  'https://images.pexels.com/photos/209206/pexels-photo-209206.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  height: 77,
                  width: 92,
                ),
              ),
              SizedBox(width: 70),
              Text(
                'Bread',
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: ColorConstants.browncolor),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Qty',
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: ColorConstants.browncolor),
              ),
              SizedBox(width: 15),
              Image.asset(ImageConstants.removeicon),
              SizedBox(width: 10),
              Container(
                child: Center(
                  child: Text(
                    "1",
                    style: GoogleFonts.lora(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: ColorConstants.browncolor),
                  ),
                ),
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: ColorConstants.primarycolor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(width: 10),
              Image.asset(ImageConstants.addicon),
              Spacer(),
              Container(
                child: Center(
                  child: Text(
                    'Remove',
                    style: GoogleFonts.lora(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                        color: ColorConstants.whitecolor),
                  ),
                ),
                width: 84,
                height: 22,
                decoration: BoxDecoration(
                    color: ColorConstants.browncolor,
                    borderRadius: BorderRadius.circular(15)),
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorConstants.browncolor),
        borderRadius: BorderRadius.circular(15),
        color: ColorConstants.whitecolor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                fit: BoxFit.cover,
                'https://images.pexels.com/photos/140831/pexels-photo-140831.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                height: 87,
                width: 147,
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              'Vanilla Round Cake',
              style: GoogleFonts.lora(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: ColorConstants.browncolor),
            ),
            Text(
              softWrap: true,
              'Rs. 200(per kg)',
              style: GoogleFonts.lora(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: ColorConstants.browncolor),
            ),
          ],
        ),
      ),
    );
  }
}

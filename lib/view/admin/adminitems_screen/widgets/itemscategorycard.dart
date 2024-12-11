import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';

class ItemsCategoryCard extends StatelessWidget {
  const ItemsCategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Text(
            'Bread',
            style: GoogleFonts.lora(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: ColorConstants.browncolor),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: ColorConstants.browncolor,
              )),
          SizedBox(height: 15)
        ],
      ),
      padding: EdgeInsets.symmetric(vertical: 22, horizontal: 10),
      decoration: BoxDecoration(
          color: ColorConstants.whitecolor,
          borderRadius: BorderRadius.circular(15)),
      width: double.infinity,
      height: 150,
    );
  }
}

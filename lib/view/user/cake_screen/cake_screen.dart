import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/utils/constatnts/image_constants.dart';
import 'package:lemons_bakery_app/view/user/cake_screen/widgets/product_card.dart';
import 'package:lemons_bakery_app/view/user/cakedetail_screen/cakedetail_screen.dart';

class CakeScreen extends ConsumerWidget {
  const CakeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorConstants.primarycolor,
      body: Padding(
        padding: const EdgeInsets.only(left: 14, top: 48, right: 14),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTitleSection(),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.8,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CakedetailScreen(),
                          ));
                    },
                    child: ProductCard()),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column buildTitleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Cakes ',
              style: GoogleFonts.lora(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: ColorConstants.browncolor),
            ),
            Image.asset(
              ImageConstants.cakeicon,
              fit: BoxFit.cover,
            )
          ],
        ),
        Text(
          '⭐️ Place your order At least two days In advance',
          style: GoogleFonts.lora(
              fontWeight: FontWeight.normal,
              fontSize: 10,
              color: ColorConstants.browncolor),
        )
      ],
    );
  }
}

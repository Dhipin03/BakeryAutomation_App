import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/view/widgets/globalbutton_widget.dart';

class CakedetailScreen extends ConsumerWidget {
  const CakedetailScreen({super.key});

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
              buildCakePhotoSection(context),
              SizedBox(height: 10),
              buildCakeDetailSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(left: 14, right: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'price',
                    style: GoogleFonts.lora(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.browncolor),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Rs, 2000',
                    style: GoogleFonts.lora(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: ColorConstants.browncolor),
                  ),
                ],
              ),
              GlobalButtonWidget(text: 'Book Your Cake')
            ],
          ),
        ),
      ),
    );
  }

  Column buildCakeDetailSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quantity *',
          style: GoogleFonts.lora(
              fontWeight: FontWeight.normal,
              fontSize: 14,
              color: ColorConstants.browncolor),
        ),
        SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            fillColor: ColorConstants.whitecolor,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          softWrap: true,
          'Wish *',
          style: GoogleFonts.lora(
              fontWeight: FontWeight.normal,
              fontSize: 14,
              color: ColorConstants.browncolor),
        ),
        SizedBox(height: 8),
        TextFormField(
          maxLines: 3,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            fillColor: ColorConstants.whitecolor,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          softWrap: true,
          'Theme *',
          style: GoogleFonts.lora(
              fontWeight: FontWeight.normal,
              fontSize: 14,
              color: ColorConstants.browncolor),
        ),
        SizedBox(height: 8),
        TextFormField(
          maxLines: 2,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            fillColor: ColorConstants.whitecolor,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          softWrap: true,
          'Delivery on *',
          style: GoogleFonts.lora(
              fontWeight: FontWeight.normal,
              fontSize: 14,
              color: ColorConstants.browncolor),
        ),
        SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            fillColor: ColorConstants.whitecolor,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          softWrap: true,
          'Address *',
          style: GoogleFonts.lora(
              fontWeight: FontWeight.normal,
              fontSize: 14,
              color: ColorConstants.browncolor),
        ),
        SizedBox(height: 8),
        TextFormField(
          maxLines: 3,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            fillColor: ColorConstants.whitecolor,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCakePhotoSection(BuildContext context) {
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
        Center(
          child: Text(
            'Vanilla Round Cake',
            style: GoogleFonts.lora(
                fontWeight: FontWeight.w600,
                fontSize: 28,
                color: ColorConstants.browncolor),
          ),
        ),
        SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            fit: BoxFit.cover,
            'https://images.pexels.com/photos/140831/pexels-photo-140831.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
            height: 266,
            width: double.infinity,
          ),
        )
      ],
    );
  }
}

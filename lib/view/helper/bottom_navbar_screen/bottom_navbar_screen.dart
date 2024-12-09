import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/controller/bottomnavbar_controller/bottomnavbar_controller.dart';
import 'package:lemons_bakery_app/controller/bottomnavbar_controller/bottomnavbar_state.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/utils/constatnts/image_constants.dart';

class BottomnavbarScreen extends ConsumerWidget {
  const BottomnavbarScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List screens = [];
    //int selectedindex = 0;
    final bottomnavbarscreenstate =
        ref.watch(bottomnavbarProvider) as BottomnavbarState;
    return Scaffold(
      body: screens[bottomnavbarscreenstate.index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          ref.read(bottomnavbarProvider.notifier).incindex(index: value);
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorConstants.browncolor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        selectedLabelStyle: GoogleFonts.lora(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: ColorConstants.browncolor),
        showUnselectedLabels: true,
        unselectedLabelStyle: GoogleFonts.lora(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: ColorConstants.browncolor),
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Image.asset(
              ImageConstants.homeimg,
              height: 27,
              width: 27,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Image.asset(
              ImageConstants.cartimg, // Use correct cart image
              height: 27,
              width: 27,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Items',
            icon: Image.asset(
              ImageConstants.itemsimg,
              height: 27,
              width: 27,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Cakes',
            icon: Image.asset(
              ImageConstants.cakesimg,
              height: 27,
              width: 27,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: Image.asset(
              ImageConstants.accountimg,
              height: 27,
              width: 27,
            ),
          ),
        ],
      ),
    );
  }
}

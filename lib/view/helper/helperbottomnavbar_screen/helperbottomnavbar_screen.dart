import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/controller/bottomnavbar_controller/bottomnavbar_controller.dart';
import 'package:lemons_bakery_app/controller/bottomnavbar_controller/bottomnavbar_state.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/utils/constatnts/image_constants.dart';
import 'package:lemons_bakery_app/view/helper/helper_order_screen/helper_order_screen.dart';
import 'package:lemons_bakery_app/view/helper/helpercake_order_screen/helpercakeorder_screen.dart';
import 'package:lemons_bakery_app/view/helper/helpertodays_special_screen/helpertodays_specialscreen.dart';

class HelperBottomNavBarScreen extends ConsumerWidget {
  const HelperBottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List screens = [
      HelperOrderScreen(),
      HelpertodaysSpecialscreen(),
      HelpercakeOrderScreen()
    ];
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
            label: 'Orders',
            icon: Image.asset(
              ImageConstants.ordericon,
              height: 27,
              width: 27,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Todays Special',
            icon: Image.asset(
              ImageConstants.todaysspecialicon, // Use correct cart image
              height: 27,
              width: 27,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Cake Orders',
            icon: Image.asset(
              ImageConstants.cakeordericon,
              height: 27,
              width: 27,
            ),
          ),
        ],
      ),
    );
  }
}

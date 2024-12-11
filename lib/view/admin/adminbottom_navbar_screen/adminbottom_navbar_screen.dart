import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/controller/bottomnavbar_controller/bottomnavbar_controller.dart';
import 'package:lemons_bakery_app/controller/bottomnavbar_controller/bottomnavbar_state.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/utils/constatnts/image_constants.dart';
import 'package:lemons_bakery_app/view/admin/adminitems_screen/adminitems_screen.dart';
import 'package:lemons_bakery_app/view/admin/helper_screen/helper_screen.dart';
import 'package:lemons_bakery_app/view/admin/offer_screen/offer_screen.dart';
import 'package:lemons_bakery_app/view/admin/report_screen/report_screen.dart';

class AdminBottomnavbarScreen extends ConsumerWidget {
  const AdminBottomnavbarScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List screens = [
      AdminItemsScreen(),
      OfferScreen(),
      HelperScreen(),
      ReportScreen()
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
            label: 'Items',
            icon: Image.asset(
              ImageConstants.itemicon,
              height: 27,
              width: 27,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Offers',
            icon: Image.asset(
              ImageConstants.offericon, // Use correct cart image
              height: 27,
              width: 27,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Helper',
            icon: Image.asset(
              ImageConstants.helpericon,
              height: 27,
              width: 27,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Reports',
            icon: Image.asset(
              ImageConstants.reporticon,
              height: 27,
              width: 27,
            ),
          ),
        ],
      ),
    );
  }
}

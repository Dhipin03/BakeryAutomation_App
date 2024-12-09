import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/utils/constatnts/image_constants.dart';
import 'package:lemons_bakery_app/view/user/profile_settings_screen/profile_settings_screen.dart';
import 'package:lemons_bakery_app/view/user/your_orders_screen/your_order_screen.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Map> settingslist = [
      {
        'leading': ImageConstants.yourordericon,
        'title': 'Your order',
      },
      {
        'leading': ImageConstants.profilesettingsicon,
        'title': 'Profile settings',
      },
      {
        'leading': ImageConstants.logouticon,
        'title': 'Logout',
      }
    ];
    return Scaffold(
      backgroundColor: ColorConstants.primarycolor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeaderSection(),
            buildSecondSection(settingslist),
            SizedBox(height: 40),
            buildthridSection(),
          ],
        ),
      ),
    );
  }

  Column buildthridSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text(
            'Your Orders',
            style: GoogleFonts.lora(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: ColorConstants.browncolor),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 110,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&w=800'))),
                  height: 150,
                  width: 150),
            ),
          ),
        )
      ],
    );
  }

  Padding buildSecondSection(List<Map<dynamic, dynamic>> settingslist) {
    return Padding(
      padding: EdgeInsets.only(
        left: 14,
        right: 14,
      ),
      child: Column(
        children: [
          ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      if (index == 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileSettingsScreen(),
                            ));
                      } else if (index == 0) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => YourOrderScreen(),
                            ));
                      }
                    },
                    child: ListTile(
                      title: Text(
                        settingslist[index]['title'],
                        style: GoogleFonts.lora(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: ColorConstants.browncolor),
                      ),
                      leading: Image.asset(
                        settingslist[index]['leading'],
                        height: 27,
                        width: 27,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => Divider(
                    color: ColorConstants.browncolor,
                  ),
              itemCount: 3),
          Divider(color: ColorConstants.browncolor),
        ],
      ),
    );
  }

  Widget buildHeaderSection() {
    return Padding(
      padding: EdgeInsets.only(left: 14, right: 14, top: 48, bottom: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            child: Center(
              child: Center(
                child: Icon(Icons.person),
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'Hello, ',
                        style: GoogleFonts.lora(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: ColorConstants.browncolor)),
                    TextSpan(
                        text: 'Dhipin',
                        style: GoogleFonts.lora(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: ColorConstants.browncolor))
                  ],
                ),
              ),
              Text(
                'test@gmail.com',
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.normal,
                    fontSize: 11,
                    color: ColorConstants.browncolor),
              ),
            ],
          )
        ],
      ),
    );
  }
}

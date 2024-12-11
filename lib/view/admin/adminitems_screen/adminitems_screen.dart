import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/view/admin/adminitems_screen/widgets/itemscategorycard.dart';
import 'package:lemons_bakery_app/view/admin/fooditemlistscreen/fooditemlistscreen.dart';

class AdminItemsScreen extends ConsumerWidget {
  const AdminItemsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: ColorConstants.browncolor,
        onPressed: () {
          showDialog<void>(
            context: context,
            barrierDismissible: false, // user must tap button!
            builder: (BuildContext context) {
              return AlertDialog(
                title: Center(
                  child: Text(
                    'Add New Category',
                    style: GoogleFonts.lora(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: ColorConstants.browncolor),
                  ),
                ),
                content: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15)),
                          hintText: 'Category Name',
                          hintStyle: GoogleFonts.lora(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: ColorConstants.browncolor),
                          filled: true,
                          fillColor: ColorConstants.primarycolor,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.lora(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: ColorConstants.browncolor),
                      )),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Save',
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: ColorConstants.browncolor),
                    ),
                  )
                ],
              );
            },
          );
        },
        child: Icon(
          Icons.add,
          color: ColorConstants.primarycolor,
        ),
      ),
      backgroundColor: ColorConstants.primarycolor,
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14, top: 48),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Items Category',
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: ColorConstants.browncolor),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => fooditemListScreen(),
                        ));
                  },
                  child: ItemsCategoryCard(),
                ),
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

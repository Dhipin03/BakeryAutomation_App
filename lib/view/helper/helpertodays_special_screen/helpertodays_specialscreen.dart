import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/view/widgets/buttonwidget2.dart';

class HelpertodaysSpecialscreen extends ConsumerWidget {
  const HelpertodaysSpecialscreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: ColorConstants.primarycolor,
        ),
        shape: CircleBorder(),
        backgroundColor: ColorConstants.browncolor,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (context) {
              return DraggableScrollableSheet(
                initialChildSize: 0.7,
                maxChildSize: 1.0,
                minChildSize: 0.7,
                expand: false,
                builder: (context, scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 14, right: 14, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              'Add New Food Item',
                              style: GoogleFonts.lora(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                color: ColorConstants.browncolor,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          ),
                          Text(
                            'Name',
                            style: GoogleFonts.lora(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: ColorConstants.browncolor),
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: ColorConstants.primarycolor,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Price',
                            style: GoogleFonts.lora(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: ColorConstants.browncolor),
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: ColorConstants.primarycolor,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Quantity',
                            style: GoogleFonts.lora(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: ColorConstants.browncolor),
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: ColorConstants.primarycolor,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          ButtonWidget2(title: "Save")
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      backgroundColor: ColorConstants.primarycolor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 14,
          right: 14,
          top: 48,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  "Today's Special",
                  style: GoogleFonts.lora(
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                      color: ColorConstants.browncolor),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            'Cream Bunssss',
                            style: GoogleFonts.lora(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: ColorConstants.browncolor),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Qty',
                              style: GoogleFonts.lora(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: ColorConstants.browncolor),
                            ),
                            SizedBox(height: 15),
                            Text(
                              '10',
                              style: GoogleFonts.lora(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 11,
                                  color: ColorConstants.browncolor),
                            )
                          ],
                        ),
                        SizedBox(width: 40),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              style: GoogleFonts.lora(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: ColorConstants.browncolor),
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Rs. 110',
                              style: GoogleFonts.lora(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 11,
                                  color: ColorConstants.browncolor),
                            )
                          ],
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                    decoration: BoxDecoration(
                        color: ColorConstants.whitecolor,
                        borderRadius: BorderRadius.circular(15)),
                    width: double.infinity,
                    height: 150,
                  ),
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

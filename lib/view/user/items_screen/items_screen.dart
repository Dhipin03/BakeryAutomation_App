import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';
import 'package:lemons_bakery_app/view/user/itemlist_Screen/itemlist_screen.dart';

class ItemsScreen extends ConsumerWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Map> catergorylist = [
      {
        'imgurl':
            'https://images.pexels.com/photos/36756/food-pizza-roll-baked.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        'title': 'Snacks'
      },
      {
        'imgurl':
            'https://images.pexels.com/photos/1775043/pexels-photo-1775043.jpeg?auto=compress&cs=tinysrgb&w=800',
        'title': 'Bread'
      },
      {
        'imgurl':
            'https://images.pexels.com/photos/5379541/pexels-photo-5379541.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        'title': 'Cookies'
      },
      {
        'imgurl':
            'https://images.pexels.com/photos/3872425/pexels-photo-3872425.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        'title': 'Dry Furits'
      },
      {
        'imgurl':
            'https://images.pexels.com/photos/1132047/pexels-photo-1132047.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        'title': 'Fruits'
      },
      {
        'imgurl':
            'https://images.pexels.com/photos/36756/food-pizza-roll-baked.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        'title': 'Dairy Products'
      }
    ];
    return Scaffold(
      backgroundColor: ColorConstants.primarycolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Column(
            children: [
              GridView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 166 / 198),
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ItemListScreen(),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: ColorConstants.browncolor),
                            borderRadius: BorderRadius.circular(15),
                            color: ColorConstants.whitecolor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 3),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    fit: BoxFit.cover,
                                    catergorylist[index]['imgurl'],
                                    height: 130,
                                    width: 147,
                                  ),
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  catergorylist[index]['title'],
                                  style: GoogleFonts.lora(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: ColorConstants.browncolor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}

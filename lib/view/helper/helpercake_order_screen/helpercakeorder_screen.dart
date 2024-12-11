import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:lemons_bakery_app/utils/constatnts/color_constants.dart';

class HelpercakeOrderScreen extends ConsumerWidget {
  const HelpercakeOrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final helperorderscreenstate =
    //     ref.watch(helperorderstatescreenProvider) as HelperOrderScreenState;
    return Scaffold(
      backgroundColor: ColorConstants.primarycolor,
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14, top: 48),
        child: Column(
          children: [
            Text(
              ' Cake Orders',
              style: GoogleFonts.lora(
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                  color: ColorConstants.browncolor),
            ),
            DataTable(
              columnSpacing: 10, // Reduce spacing between columns
              // dataRowMinHeight: 60,
              columns: [
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Name',
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: ColorConstants.browncolor),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Date',
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: ColorConstants.browncolor),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Total',
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: ColorConstants.browncolor),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Cancelled/Completed',
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: ColorConstants.browncolor),
                    ),
                  ),
                )
              ],
              rows: List.generate(
                4,
                (index) => DataRow(cells: [
                  DataCell(
                    Expanded(
                      child: Text(
                        maxLines: 2,
                        'Hari',
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  DataCell(
                    Expanded(
                      child: Text('20-12-2024',
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  DataCell(
                    Expanded(
                      child: Text('Rs.50.00',
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  DataCell(Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  )),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

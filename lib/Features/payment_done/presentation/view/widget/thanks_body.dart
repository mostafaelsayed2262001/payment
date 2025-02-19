import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment/Features/payment_done/presentation/view/widget/details_item_row.dart';
import 'package:payment/Features/payment_done/presentation/view/widget/done_Icon_widget.dart';
import 'package:payment/core/routes/app_routes.dart';
import 'package:payment/core/theme/app_theme.dart';
import 'package:payment/core/widget/text_utils.dart';
import 'package:sizer/sizer.dart';

Widget thanksBodyWidget(BuildContext context){
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20)),
    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
    child: Column(
      spacing: 10,
      children: [
        doneIconWidget(),
        Text(
          "Thank you",
          style: Styles.style25,
        ),
        Text(
          "Your transaction was successful",
          style: Styles.style18,
        ),
        SizedBox(
          height: 20,
        ),
        detailsItemsRow(itemTitle: "Data", itemData: "01/24/2023"),
        detailsItemsRow(itemTitle: "Time", itemData: "10:15 AM"),
        detailsItemsRow(itemTitle: "To", itemData: "Sam Louis"),
        Padding(
          padding:
          const EdgeInsets.only(top: 18.0, left: 18.0, right: 18.0),
          child: Divider(
            thickness: 3,
          ),
        ),
        detailsItemsRow(
            itemTitle: "Total", itemData: "\$50.97", isTotal: true),
        Image.asset("assets/thanksitems/cardType.png"),
        Divider(
          thickness: 3,
          indent: 20,
          endIndent: 20,
        ),
        Container(
          margin: EdgeInsetsDirectional.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/thanksitems/qrcode.png",),
              Spacer(),
              InkWell(
                onTap: (){
                  context.go(AppRouter.kMyCartView);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 9.h,
                  width: 31.w,
                  decoration: BoxDecoration(

                    // color: Colors.green,/
                      border: Border.all(color: kPrimaryColor, width: 2),
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    "Paid",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}